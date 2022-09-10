// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_registration_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TravelRegistrationController
    on TravelRegistrationControllerBase, Store {
  late final _$showMapAtom =
      Atom(name: 'TravelRegistrationControllerBase.showMap', context: context);

  @override
  bool get showMap {
    _$showMapAtom.reportRead();
    return super.showMap;
  }

  @override
  set showMap(bool value) {
    _$showMapAtom.reportWrite(value, super.showMap, () {
      super.showMap = value;
    });
  }

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

  late final _$volumeTypeAtom = Atom(
      name: 'TravelRegistrationControllerBase.volumeType', context: context);

  @override
  Volume get volumeType {
    _$volumeTypeAtom.reportRead();
    return super.volumeType;
  }

  @override
  set volumeType(Volume value) {
    _$volumeTypeAtom.reportWrite(value, super.volumeType, () {
      super.volumeType = value;
    });
  }

  late final _$weightAtom =
      Atom(name: 'TravelRegistrationControllerBase.weight', context: context);

  @override
  Weight get weight {
    _$weightAtom.reportRead();
    return super.weight;
  }

  @override
  set weight(Weight value) {
    _$weightAtom.reportWrite(value, super.weight, () {
      super.weight = value;
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
  void setVolumeType(Volume? value) {
    final _$actionInfo = _$TravelRegistrationControllerBaseActionController
        .startAction(name: 'TravelRegistrationControllerBase.setVolumeType');
    try {
      return super.setVolumeType(value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void setWeightType(Weight? value) {
    final _$actionInfo = _$TravelRegistrationControllerBaseActionController
        .startAction(name: 'TravelRegistrationControllerBase.setWeightType');
    try {
      return super.setWeightType(value);
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
  void addMidpoint(BuildContext context, String value) {
    final _$actionInfo = _$TravelRegistrationControllerBaseActionController
        .startAction(name: 'TravelRegistrationControllerBase.addMidpoint');
    try {
      return super.addMidpoint(context, value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  void removeMindpoint(String value) {
    final _$actionInfo = _$TravelRegistrationControllerBaseActionController
        .startAction(name: 'TravelRegistrationControllerBase.removeMindpoint');
    try {
      return super.removeMindpoint(value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
showMap: ${showMap},
transportType: ${transportType},
volumeType: ${volumeType},
weight: ${weight},
tabItemSelected: ${tabItemSelected}
    ''';
  }
}
