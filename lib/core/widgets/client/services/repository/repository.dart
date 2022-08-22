import '../models/cliente_model.dart';

abstract class Repository {
  Future<Map<dynamic, String>> getClientSelection();
}
