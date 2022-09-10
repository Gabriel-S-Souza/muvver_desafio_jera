import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/core.dart';
import 'features/features.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'muvver',
      theme: CustomTheme.theme,
      localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
            Locale('pt', 'BR'),
      ],
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => HomeScreen(),
        '/means_of_transport': (BuildContext context) => MeansOfTransportScreen(),
        '/travel_path': (BuildContext context) => TravelPathScreen(),
        '/midpoint_form': (BuildContext context) => MidpointScreen(),
        '/volume': (BuildContext context) => VolumeScreen(),
        '/weight': (BuildContext context) => WeightScreen(),
      },
      initialRoute: '/home',
    );
}
