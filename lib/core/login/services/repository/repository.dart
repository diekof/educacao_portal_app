import '../models/usuario.dart';

abstract class Repository {
  /*
  Future<List<Usuario>> getUsuarioList();
  Future<String> patchCompleted(Usuario usuario);
  Future<String> putCompleted(Usuario usuario);
  Future<String> deletedUsuario(Usuario usuario);
  */
  Future<Map<String, dynamic>> postUsuarioLogin(Usuario usuario);
}
