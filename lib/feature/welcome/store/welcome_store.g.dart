// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'welcome_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$WelcomeStore on _WelcomeStore, Store {
  late final _$pageAtom = Atom(name: '_WelcomeStore.page', context: context);

  @override
  int get page {
    _$pageAtom.reportRead();
    return super.page;
  }

  @override
  set page(int value) {
    _$pageAtom.reportWrite(value, super.page, () {
      super.page = value;
    });
  }

  late final _$_WelcomeStoreActionController =
      ActionController(name: '_WelcomeStore', context: context);

  @override
  void setPage(int value) {
    final _$actionInfo = _$_WelcomeStoreActionController.startAction(
        name: '_WelcomeStore.setPage');
    try {
      return super.setPage(value);
    } finally {
      _$_WelcomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
page: ${page}
    ''';
  }
}
