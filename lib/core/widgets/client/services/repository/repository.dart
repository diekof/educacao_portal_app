import '../model/client_model.dart';

abstract class Repository {
  Future<List<ClientModel>> getClientSelection();
}
