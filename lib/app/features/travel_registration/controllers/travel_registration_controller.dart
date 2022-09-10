import 'dart:async';

import 'package:flutter/material.dart';

import '../../../app.dart';
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

  final TextEditingController midpointController = TextEditingController();

  String startDate = '';

  String endDate = '';

  List<String> _suggestions = [];

  Timer? _debounce;

  @observable
  bool showMap = false;
  
  @observable
  MeansOfTransport transportType = MeansOfTransport.car;

  @action
  void setTransportType(MeansOfTransport? value) => 
      transportType = value ?? MeansOfTransport.car;

  @observable
  Volume volumeType = Volume.envelope;

  @action
  void setVolumeType(Volume? value) => 
      volumeType = value ?? Volume.envelope;
  
  @observable
  Weight weight = Weight.one;

  @action
  void setWeightType(Weight? value) => 
      weight = value ?? Weight.one;

  @observable
  ItemSelected tabItemSelected = ItemSelected.routes;

  @action
  void setTabItemSelected(ItemSelected value) {
    if (tabItemSelected != value) {
      tabItemSelected = value;
      showMap = !showMap;
    }
  }
  
  ObservableList<String> midpoints = ObservableList<String>();

  @action
  void addMidpoint(BuildContext context, String value) {
    final String shortedValue = shortPlace(value);

    midpoints.add(shortedValue);
    midpointController.text = '';
    Navigator.pop(context);
  }
  
  @action
  void removeMindpoint(String value) => 
    midpoints.remove(value);
  
  void goToTravelPath(BuildContext context) => Navigator.of(context).pushNamed('/travel_path');
  
  void goToMidpointForm(BuildContext context) => Navigator.of(context).pushNamed('/midpoint_form');

  void goToVolume(BuildContext context) => Navigator.of(context).pushNamed('/volume');
  
  void goToWeight(BuildContext context) => Navigator.of(context).pushNamed('/weight');

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

  String shortPlace(String value) => value.split(',')[0];

  List<String> get suggestions => _suggestions;

  String get origin => shortPlace(originController.text);

  String get destiny => shortPlace(destinyController.text);
}