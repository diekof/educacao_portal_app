import 'package:mobx/mobx.dart';

part 'welcome_store.g.dart';

class WelcomeStore = _WelcomeStore with _$WelcomeStore;

abstract class _WelcomeStore with Store {
  @observable
  int page = 0;

  @action
  void setPage(int value) {
    page = value;
  }
}
