import 'package:mobx/mobx.dart';

import '../services/model/client_model.dart';
import '../services/repository/repository.dart';

class ClienteController {
  late Repository _clientRepository;
  ClienteController(this._clientRepository);

  Future<List<ClientModel>> fetchClientList() async {
    return await _clientRepository.getClientSelection();
  }
}
