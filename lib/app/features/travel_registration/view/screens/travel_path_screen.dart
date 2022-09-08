import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../app.dart';
import '../widgets/widgets.dart';

class TravelPathScreen extends StatelessWidget {
  TravelPathScreen({Key? key}) : super(key: key);

  final TravelRegistrationController _controller =
      GetIt.I.get<TravelRegistrationController>();
  
  @override
  Widget build(BuildContext context)  => SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          context: context,
          title: 'Viajante',
          sectionTitle: 'Qual o trajeto da sua viagem?',
          backIcon: Icons.close,
          bottom: TabBarWidget(
            onChanged: _controller.setTabItemSelected,
          ),
          bottomHeight: MediaQuery.of(context).size.height * 0.134,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 16,
            right: 16
          ),
          child: ListView(
            children: [
              const SizedBox(height: 24),
              Text(
                'Selecione a data e rota da sua viagem',
                style: Theme.of(context).textTheme.headline4!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.secondary
                ),
              ),
            ]
          ),
        ),
        bottomNavigationBar: BottomFixedWidget(
          child: ButtonAppWidget(
            onPressed: () {},
            title: 'Avançar' 
          ),
        )
      )
    );
}