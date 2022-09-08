// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'travel_registration_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TravelRegistrationController
    on TravelRegistrationControllerBase, Store {
  late final _$modeOfTranportAtom = Atom(
      name: 'TravelRegistrationControllerBase.modeOfTranport',
      context: context);

  @override
  MeansOfTransport get modeOfTranport {
    _$modeOfTranportAtom.reportRead();
    return super.modeOfTranport;
  }

  @override
  set modeOfTranport(MeansOfTransport value) {
    _$modeOfTranportAtom.reportWrite(value, super.modeOfTranport, () {
      super.modeOfTranport = value;
    });
  }

  late final _$TravelRegistrationControllerBaseActionController =
      ActionController(
          name: 'TravelRegistrationControllerBase', context: context);

  @override
  void setModeOfTranport(MeansOfTransport? value) {
    final _$actionInfo =
        _$TravelRegistrationControllerBaseActionController.startAction(
            name: 'TravelRegistrationControllerBase.setModeOfTranport');
    try {
      return super.setModeOfTranport(value);
    } finally {
      _$TravelRegistrationControllerBaseActionController
          .endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
modeOfTranport: ${modeOfTranport}
    ''';
  }
}
