import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../core/core.dart';
import '../view/widgets/widgets.dart';

part 'travel_registration_controller.g.dart';

class TravelRegistrationController = TravelRegistrationControllerBase 
    with _$TravelRegistrationController;

abstract class TravelRegistrationControllerBase with Store {
  
  @observable
  MeansOfTransport transportType = MeansOfTransport.car;

  @action
  void setTransportType(MeansOfTransport? value) => 
      transportType = value ?? MeansOfTransport.car;
  
  void goToTravelPath(BuildContext context) => Navigator.of(context).pushNamed('/travel_path');

  @observable
  ItemSelected tabItemSelected = ItemSelected.routes;

  @action
  void setTabItemSelected(ItemSelected value) => 
      tabItemSelected = value;
}