import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import '../../../../app.dart';
import '../../../../core/core.dart';
import '../../models/models.dart';
import '../widgets/widgets.dart';

class MeansOfTransportPage extends StatelessWidget {
  MeansOfTransportPage({Key? key}) : super(key: key);

  final TravelRegistrationController _controller =
      GetIt.I.get<TravelRegistrationController>();

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
            options: _options,
            controller: _controller,
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
      title: MeansOfTransport.car.name,
      transportType: MeansOfTransport.car,
    ),
    OptionItemModel(
      pathImage: Assets.plane,
      title: MeansOfTransport.plane.name,
      transportType: MeansOfTransport.plane,
    ),
    OptionItemModel(
      pathImage: Assets.truck,
      title: MeansOfTransport.truck.name,
      transportType: MeansOfTransport.truck,
    ),
    OptionItemModel(
      pathImage: Assets.van,
      title: MeansOfTransport.van.name,
      transportType: MeansOfTransport.van,
    ),
    OptionItemModel(
      pathImage: Assets.motorcycle,
      title: MeansOfTransport.motorcycle.name,
      transportType: MeansOfTransport.motorcycle,
    ),
    OptionItemModel(
      pathImage: Assets.bike,
      title: MeansOfTransport.bike.name,
      transportType: MeansOfTransport.bike,
    ),
    OptionItemModel(
      pathImage: Assets.train,
      title: MeansOfTransport.train.name,
      transportType: MeansOfTransport.train,
    ),
    OptionItemModel(
      pathImage: Assets.bus,
      title: MeansOfTransport.bus.name,
      transportType: MeansOfTransport.bus,
    ),
    OptionItemModel(
      pathImage: Assets.boat,
      title: MeansOfTransport.boat.name,
      transportType: MeansOfTransport.boat,
    ),
  ];