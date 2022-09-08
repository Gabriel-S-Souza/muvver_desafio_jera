import 'package:get_it/get_it.dart';

import '../features/features.dart';

class ServiceLocator {
  static Future<void> setupLocator() async {
    final getIt = GetIt.instance;

    getIt.registerSingleton(TravelRegistrationController());
  }
}