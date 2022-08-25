import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../constants/coplan_api.dart';
import '../model/client_model.dart';
import 'repository.dart';

class ClienteRepository extends Repository {
  final String urlCoplan = CoplanApi.urlCoplan;
  final Map<String, String> header = {"Content-type": "application/json"};
  late List<ClientModel> cliente;

  @override
  Future<List<ClientModel>> getClientSelection() async {
    var url = Uri.parse('$urlCoplan/clientelista/validaretornoclientes');
    final response = await http.get(url, headers: header);
    final decodedJson = jsonDecode(response.body);
    print(decodedJson.toString());
    cliente = (decodedJson['Clientes_response'] as List).map((json) {
      return ClientModel.fromJson(json);
    }).toList();
    return cliente;
  }
}
