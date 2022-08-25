import 'package:mobx/mobx.dart';

part 'client_select_store.g.dart';

class ClientSelect = ClientSelectBase with _$ClientSelect;

abstract class ClientSelectBase with Store {
  @observable
  String? dropDownValue;
  @observable
  int? dropDownValueInt;

  @action
  void setDropDownValue(newValue) {
    dropDownValue = newValue;
  }

  @action
  int getClient() {
    switch (dropDownValue) {
      case 'Alta Floresta':
        return 1;
      case 'Nova Marilândia':
        return 2;
      default:
        print(dropDownValue.toString());
        return 0;
    }
  }
}
