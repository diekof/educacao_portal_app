import 'dart:convert';

class Clients {
  String? cliente_Id;
  String? cliente_Nome;

  Clients({this.cliente_Id, this.cliente_Nome});

  Clients.fromJson(Map<String, String> json) {
    cliente_Id = json['clienteId'];
    cliente_Nome = json['clienteNome'];
  }
  dynamic toJson() {
    final Map<String, dynamic> cliente = new Map<String, String>();
    cliente['clienteId'] = this.cliente_Id;
    cliente['clienteNome'] = this.cliente_Nome;
  }
}
