import 'package:flutter/cupertino.dart';
import 'package:mobx/mobx.dart';

import '../../../core/core.dart';

part 'travel_registration_controller.g.dart';

class TravelRegistrationController = TravelRegistrationControllerBase 
    with _$TravelRegistrationController;

abstract class TravelRegistrationControllerBase with Store {
  
  @observable
  MeansOfTransport modeOfTranport = MeansOfTransport.car;

  @action
  void setModeOfTranport(MeansOfTransport? value) => 
      modeOfTranport = value ?? MeansOfTransport.car;
  
  void goToTravelPath(BuildContext context) => Navigator.of(context).pushNamed('/travel_path');
}