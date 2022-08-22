import 'dart:convert';

class Usuario {
  // Atributos
  String? clientID = '1';
  int? usuarioID;
  String? usuarioLogin;
  String? usuarioSenha;

  Usuario(
      {this.clientID, this.usuarioID, this.usuarioLogin, this.usuarioSenha});


  Usuario.fromJson(Map<String, dynamic> json) {
    clientID = json['ClientId'];
    usuarioLogin = json['usuario_portal_login'];
    usuarioSenha = json['usuario_portal_senha'];
    usuarioID = json['usuario_portal_id'];
  }

  dynamic toJson() {
    final Map<String, dynamic> usuario = new Map<String, dynamic>();
    usuario['ClientId'] = this.clientID;
    usuario['usuario_portal_login'] = this.usuarioLogin;
    usuario['usuario_portal_senha'] = this.usuarioSenha;
    return json.encode(usuario);
  }
}
