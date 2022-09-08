import 'package:flutter/material.dart';
import '../../core/core.dart';
import 'models/models.dart';
import 'widgets/widgets.dart';

class MeansOfTransportView extends StatelessWidget {
  const MeansOfTransportView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  => SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          context: context,
          title: 'Viajante',
          sectionTitle: 'Qual será o meio de transporte da sua viagem?',
          backIcon: Icons.close,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 16,
            right: 16
          ),
          child: ListOptionsWidget(
            title: 'Transporte',
            options: _options
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

final List<OptionItemModel> _options = [
    OptionItemModel(
      pathImage: Assets.car,
      title: 'Carro'
    ),
    OptionItemModel(
      pathImage: Assets.plane,
      title: 'Avião'
    ),
    OptionItemModel(
      pathImage: Assets.truck,
      title: 'Caminhão'
    ),
    OptionItemModel(
      pathImage: Assets.van,
      title: 'Van'
    ),
    OptionItemModel(
      pathImage: Assets.motorcycle,
      title: 'Moto'
    ),
    OptionItemModel(
      pathImage: Assets.bike,
      title: 'Bicicleta'
    ),
    OptionItemModel(
      pathImage: Assets.train,
      title: 'Trem'
    ),
    OptionItemModel(
      pathImage: Assets.bus,
      title: 'Ônibus'
    ),
    OptionItemModel(
      pathImage: Assets.boat,
      title: 'Embaracação'
    ),
  ];