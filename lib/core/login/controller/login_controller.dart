import 'package:mobx/mobx.dart';

import '../models/login_usuario.dart';

part 'login_controller.g.dart';

class Controller = LoginControllerBase with _$Controller;

abstract class LoginControllerBase with Store {
  var usuario = UsuarioLogin();

  dynamic validaLogin() {
    verificaCampoVazio(usuario.login);
  }

  dynamic validaSenha() {
    verificaCampoVazio(usuario.senha);
  }

  dynamic verificaCampoVazio(String? campo) {
    if (campo == '') {
      return "Este campo é obrigatório";
    }
    return null;
  }
}





/*




  if (loginController.text.isEmpty)
  {
    showDialog<String>(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: const Text('Erro'),
        content:
            const Text('O campo de login não pode estar vazio!'),
        actions: <Widget>[
          TextButton(
            onPressed: () => Navigator.pop(context, 'OK'),
            child: const Text('OK'),
          ),
        ],
      ),
    ),
  }
else
  {
    if (senhaController.text.isEmpty)
      {
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Erro'),
            content: const Text(
                'O campo de senha não pode estar vazio!'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        ),
      }
    else
      {
       
      }
  },


  error no form field -




*/