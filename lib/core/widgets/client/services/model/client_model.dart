class ClientModel {
  int? cliente_Id;
  String? cliente_Nome;

  ClientModel({this.cliente_Id, this.cliente_Nome});

  ClientModel.fromJson(Map<String, dynamic> json) {
    cliente_Id = json['clienteId'];
    cliente_Nome = json['clienteNome'];
  }

  dynamic toJson() {
    final Map<String, dynamic> cliente = new Map<String, String>();
    cliente['clienteId'] = this.cliente_Id;
    cliente['clienteNome'] = this.cliente_Nome;
  }
}
