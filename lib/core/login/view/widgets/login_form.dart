import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../feature/home/view/home_page.dart';
import '../../../constants/app_assets.dart';
import '../../../constants/app_strings.dart';
import '../../controller/login_controller.dart';
import '../../services/controller/usuario_login_controller.dart';
import '../../services/models/erro.dart';
import '../../services/models/usuario.dart';
import '../../services/repository/login_repository.dart';

class LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var usuarioLoginController = UsuarioLoginController(LoginRepository());
    var login_controller = Controller();
    Usuario usuario = Usuario();
    Color secondaryThemeColor = Theme.of(context).colorScheme.secondary;
    Widget _textField({
      required String prefixImage,
      required bool obscureText,
      String? labelText,
      Function(String)? onChanged,
      required dynamic Function() errorText,
    }) {
      return TextField(
        onChanged: onChanged,
        obscureText: obscureText,
        cursorColor: Theme.of(context).colorScheme.onSurface,
        style: TextStyle(color: secondaryThemeColor),
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            prefixImage,
            scale: 1,
          ),
          labelText: labelText!,
          errorText: errorText == null ? '' : errorText(),
        ),
      );
    }

    Erro _erro = Erro();
    Future<Map<String, dynamic>>? _futureMapApi;
    SnackBar snackErro = const SnackBar(
      content: Text(''),
    );
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(30, 2, 30, 10),
        child: Observer(builder: (_) {
          return _textField(
              prefixImage: Assets.iconLogin,
              obscureText: false,
              labelText: 'Login',
              errorText: () {
                return login_controller.validaLogin();
              },
              onChanged: login_controller.usuario.mudarLogin);
        }),
      ),
      Padding(
          padding: const EdgeInsets.fromLTRB(30, 2, 30, 0),
          child: Observer(
            builder: (_) {
              return _textField(
                prefixImage: Assets.iconPassword,
                obscureText: true,
                labelText: 'Senha',
                onChanged: login_controller.usuario.mudarSenha,
                errorText: () {
                  return login_controller.validaSenha();
                },
              );
            },
          )),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextButton(
          style: ElevatedButton.styleFrom(
              primary: Theme.of(context).colorScheme.surface,
              shape: StadiumBorder()),
          onPressed: () => {
            usuario = Usuario(
              clientID: '1',
              usuarioLogin: login_controller.usuario.login,
              usuarioSenha: login_controller.usuario.senha,
            ),
            _futureMapApi = usuarioLoginController.postUsuarioLogin(usuario),
            _futureMapApi!.then((Map<String, dynamic> myMap) {
              _erro = Erro(erro: myMap['erro'], mensagem: myMap['message']);
            }),
            /*},*/
            snackErro = SnackBar(
              content: Text(_erro.mensagem!),
            ),
            if (_erro.erro == true)
              {
                ScaffoldMessenger.of(context).showSnackBar(snackErro),
              }
            else
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const HomePage()),
                )
              }
          },
          child: Container(
            width: MediaQuery.of(context).size.width * 0.76,
            height: 44,
            child: Center(
              child: Text(
                LoginStrings.stringButton,
                style: TextStyle(fontSize: 18, color: secondaryThemeColor),
              ),
            ),
          ),
        ),
      ),
      TextButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Esqueceu sua senha ou login?',
              style: TextStyle(color: secondaryThemeColor),
            ),
            Text(
              'Clique aqui!',
              style: TextStyle(
                  color: secondaryThemeColor,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        onPressed: () => {},
      ),
    ]);
  }
}
