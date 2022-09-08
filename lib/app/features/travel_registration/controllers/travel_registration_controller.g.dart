// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_registration_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TravelRegistrationController
    on TravelRegistrationControllerBase, Store {
  late final _$transportTypeAtom = Atom(
      name: 'TravelRegistrationControllerBase.transportType', context: context);

  @override
  MeansOfTransport get transportType {
    _$transportTypeAtom.reportRead();
    return super.transportType;
  }

  @override
  set transportType(MeansOfTransport value) {
    _$transportTypeAtom.reportWrite(value, super.transportType, () {
      super.transportType = value;
    });
  }

  late final _$tabItemSelectedAtom = Atom(
      name: 'TravelRegistrationControllerBase.tabItemSelected',
      context: context);

  @override
  ItemSelected get tabItemSelected {
    _$tabItemSelectedAtom.reportRead();
    return super.tabItemSelected;
  }

  @override
  set tabItemSelected(ItemSelected value) {
    _$tabItemSelectedAtom.reportWrite(value, super.tabItemSelected, () {
      super.tabItemSelected = value;
    });
  }

  late final _$TravelRegistrationControllerBaseActionController =
      ActionController(
          name: 'TravelRegistrationControllerBase', context: context);

  @override
  void setTransportType(MeansOfTransport? value) {
    final _$actionInfo = _$TravelRegistrationControllerBaseActionController
        .startAction(name: 'TravelRegistrationControllerBase.setTransportType');
    try {
      return super.setTransportType(value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void setTabItemSelected(ItemSelected value) {
    final _$actionInfo =
        _$TravelRegistrationControllerBaseActionController.startAction(
            name: 'TravelRegistrationControllerBase.setTabItemSelected');
    try {
      return super.setTabItemSelected(value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
transportType: ${transportType},
tabItemSelected: ${tabItemSelected}
    ''';
  }
}
