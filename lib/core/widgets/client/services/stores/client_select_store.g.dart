// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_select_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ClientSelect on ClientSelectBase, Store {
  late final _$dropDownValueAtom =
      Atom(name: 'ClientSelectBase.dropDownValue', context: context);

  @override
  String? get dropDownValue {
    _$dropDownValueAtom.reportRead();
    return super.dropDownValue;
  }

  @override
  set dropDownValue(String? value) {
    _$dropDownValueAtom.reportWrite(value, super.dropDownValue, () {
      super.dropDownValue = value;
    });
  }

  late final _$dropDownValueIntAtom =
      Atom(name: 'ClientSelectBase.dropDownValueInt', context: context);

  @override
  int? get dropDownValueInt {
    _$dropDownValueIntAtom.reportRead();
    return super.dropDownValueInt;
  }

  @override
  set dropDownValueInt(int? value) {
    _$dropDownValueIntAtom.reportWrite(value, super.dropDownValueInt, () {
      super.dropDownValueInt = value;
    });
  }

  late final _$ClientSelectBaseActionController =
      ActionController(name: 'ClientSelectBase', context: context);

  @override
  void setDropDownValue(dynamic newValue) {
    final _$actionInfo = _$ClientSelectBaseActionController.startAction(
        name: 'ClientSelectBase.setDropDownValue');
    try {
      return super.setDropDownValue(newValue);
    } finally {
      _$ClientSelectBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  int getClient() {
    final _$actionInfo = _$ClientSelectBaseActionController.startAction(
        name: 'ClientSelectBase.getClient');
    try {
      return super.getClient();
    } finally {
      _$ClientSelectBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
dropDownValue: ${dropDownValue},
dropDownValueInt: ${dropDownValueInt}
    ''';
  }
}
