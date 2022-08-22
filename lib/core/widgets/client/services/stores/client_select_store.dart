import 'package:http/http.dart';
import 'package:mobx/mobx.dart';
import '../models/cliente_model.dart';
import '../repository/repository.dart';

part 'client_select.g.dart';

class ClientSelect = _ClientSelectBase with _$ClientSelect;

abstract class _ClientSelectBase with Store {
  @observable
  late Repository _repository;
  @observable
  Clients cliente = Clients();
  @observable
  List<String> list = [];

  _ClientSelectBase(this._repository);

  @action
  Future<Map<dynamic, String>> getClientList() async {
    return _repository.getClientSelection();
  }

  @action
  void addClientList(Clients cliente) {
    list.add(cliente.cliente_Nome!);
  }
}
