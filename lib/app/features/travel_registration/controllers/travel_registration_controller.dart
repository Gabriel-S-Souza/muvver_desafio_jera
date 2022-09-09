import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/core.dart';
import '../view/widgets/widgets.dart';

part 'travel_registration_controller.g.dart';

class TravelRegistrationController = TravelRegistrationControllerBase 
    with _$TravelRegistrationController;

abstract class TravelRegistrationControllerBase 
  with Store, Calendar {

  String startDate = '';

  String endDate = '';

  final TextEditingController startDateController = TextEditingController();

  final TextEditingController endDateController = TextEditingController();
  
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
}