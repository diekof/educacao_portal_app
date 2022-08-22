// import 'package:educacao_portal/core/widgets/client/services/repository/repository.dart';

import '../models/cliente_model.dart';
import '../repository/repository.dart';

class ClienteSelectController {
  final Repository _repository;

  ClienteSelectController(this._repository);

  Future<Future<Map<dynamic, String>>> postUsuarioLogin() async {
    return _repository.getClientSelection();
  }
}