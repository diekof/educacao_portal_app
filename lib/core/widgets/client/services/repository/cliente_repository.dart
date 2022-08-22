import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../../constants/coplan_api.dart';
import 'repository.dart';

class ClienteRepository extends Repository {
  final String urlCoplan = CoplanApi.urlCoplan;
  final Map<String, String> header = {"Content-type": "application/json"};

  @override
  Future<Map<dynamic, String>> getClientSelection() async {
    var url = Uri.parse('$urlCoplan/clientelista/validaretornoclientes');
    final response = await http.get(url, headers: header);
    final Map<String, dynamic> decodedJson = jsonDecode(response.body);
    final List<String?> jsonList = decodedJson['clienteId'];

   
    return jsonDecode(response.body);
  }
}
