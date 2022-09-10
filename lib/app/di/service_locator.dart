import '../app.dart';

class ServiceLocator {
  static Future<void> setupLocator() async {
    final getIt = GetIt.instance;

    getIt.registerSingleton(TravelRegistrationController());
  }
}