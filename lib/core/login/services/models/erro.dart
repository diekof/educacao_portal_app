class Erro {
  bool? erro;
  String? mensagem;

  Erro({this.erro, this.mensagem});

  Erro.fromJson(Map<String, dynamic> json) {
    erro = json['erro'];
    mensagem = json['message_str'];
  }
}
