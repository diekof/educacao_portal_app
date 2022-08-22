import 'dart:core';

import '../models/usuario.dart';
import '../repository/repository.dart';

class UsuarioLoginController {
  final Repository _repository;

  UsuarioLoginController(this._repository);

  Future<Map<String, dynamic>> postUsuarioLogin(Usuario usuario) async {
    return _repository.postUsuarioLogin(usuario);
  }
}
