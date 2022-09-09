import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_place/google_place.dart';
import 'package:mobx/mobx.dart';

import '../../../core/core.dart';
import '../../../infra/infra.dart';
import '../view/widgets/widgets.dart';

part 'travel_registration_controller.g.dart';

class TravelRegistrationController = TravelRegistrationControllerBase 
    with _$TravelRegistrationController;

abstract class TravelRegistrationControllerBase 
  with Store, Calendar {

  final TextEditingController startDateController = TextEditingController();

  final TextEditingController endDateController = TextEditingController();

  final TextEditingController originController = TextEditingController();

  final TextEditingController destinyController = TextEditingController();

  String startDate = '';

  String endDate = '';

  List<String> _suggestions = [];

  Timer? _debounce;
  
  @observable
  MeansOfTransport transportType = MeansOfTransport.car;

  @action
  void setTransportType(MeansOfTransport? value) => 
      transportType = value ?? MeansOfTransport.car;

  @observable
  ItemSelected tabItemSelected = ItemSelected.routes;

  @action
  void setTabItemSelected(ItemSelected value) => 
      tabItemSelected = value;
  
  ObservableList<String> midpoints = ObservableList<String>();

  @action
  void addMidpoint(String value) => 
    midpoints.add(value);
  
  @action
  void removeMindpoint(String value) => 
    midpoints.remove(value);
  
  void goToTravelPath(BuildContext context) => Navigator.of(context).pushNamed('/travel_path');

  void onChangedPlaces(String value) {
    if (value.isNotEmpty) {
      
    } else {
      
    }
  }

  Future<void> autoCompleteSearch(String input) async {
    if (input.isEmpty) return;

    final AutocompleteResponse? result =
        await PlacesService.googlePlace.autocomplete.get(input);

    
    if (_debounce != null && _debounce!.isActive) {
      _debounce!.cancel();
    }

    _debounce = Timer(const Duration(milliseconds: 400), () {
    
      if (result != null && result.predictions != null) {
        _suggestions = result.predictions!.map((prediction) => 
        prediction.description ?? 'Description not found'
        ).toList();
      }
    });
  }

  List<String> get suggestions => _suggestions;
}