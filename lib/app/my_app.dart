import 'package:flutter/material.dart';

import 'core/core.dart';
import 'features/features.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
      title: 'muvver',
      theme: CustomTheme.theme,
      routes: <String, WidgetBuilder>{
        '/home': (BuildContext context) => const HomeView(),
        '/travel_registration': (BuildContext context) => MeansOfTransportPage(),
      },
      initialRoute: '/home',
    );
}
