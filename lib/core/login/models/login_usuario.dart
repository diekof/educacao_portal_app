import 'package:mobx/mobx.dart';
part 'login_usuario.g.dart';

class UsuarioLogin = _UsuarioBase with _$UsuarioLogin;

abstract class _UsuarioBase with Store {
  @observable
  String? login;
  @action
  mudarLogin(String value) => login = value;

  @observable
  String? senha;
  @action
  mudarSenha(String value) => senha = value;
}
