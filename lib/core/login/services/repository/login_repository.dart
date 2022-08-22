import 'dart:convert';
import 'package:http/http.dart' as http;

import '../../../constants/coplan_api.dart';
import '../models/usuario.dart';
import 'repository.dart';

class LoginRepository extends Repository {
  final urlCoplan = CoplanApi.urlCoplan;
  final Map<String, String> header = {'Content-type': 'application/json'};

  @override
  Future<Map<String, dynamic>> postUsuarioLogin(Usuario usuario) async {
    var url = Uri.parse('$urlCoplan/authportal/validalogin');
    print(url);
    final response =
        await http.post(url, body: usuario.toJson(), headers: header);
    final Map<String, dynamic> result = json.decode(response.body);

    return result;
  }
}
