// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_usuario.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$UsuarioLogin on _UsuarioBase, Store {
  late final _$loginAtom = Atom(name: '_UsuarioBase.login', context: context);

  @override
  String? get login {
    _$loginAtom.reportRead();
    return super.login;
  }

  @override
  set login(String? value) {
    _$loginAtom.reportWrite(value, super.login, () {
      super.login = value;
    });
  }

  late final _$senhaAtom = Atom(name: '_UsuarioBase.senha', context: context);

  @override
  String? get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String? value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$_UsuarioBaseActionController =
      ActionController(name: '_UsuarioBase', context: context);

  @override
  dynamic mudarLogin(String value) {
    final _$actionInfo = _$_UsuarioBaseActionController.startAction(
        name: '_UsuarioBase.mudarLogin');
    try {
      return super.mudarLogin(value);
    } finally {
      _$_UsuarioBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic mudarSenha(String value) {
    final _$actionInfo = _$_UsuarioBaseActionController.startAction(
        name: '_UsuarioBase.mudarSenha');
    try {
      return super.mudarSenha(value);
    } finally {
      _$_UsuarioBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
login: ${login},
senha: ${senha}
    ''';
  }
}
