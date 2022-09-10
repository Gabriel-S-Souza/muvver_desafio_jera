import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../app.dart';
import '../../../../core/core.dart';
import '../../models/models.dart';
import '../widgets/widgets.dart';

class MeansOfTransportScreen extends StatelessWidget {
  MeansOfTransportScreen({Key? key}) : super(key: key);

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
          onPressed: () => Navigator.pushNamedAndRemoveUntil(
            context, 
            '/home', 
            (route) => false
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 16,
            right: 16
          ),
          child: Observer(
            builder: (context) => ListOptionsWidget(
                title: 'Transporte',
                options: _options,
                onChanged: (value) {
                  _controller.setTransportType(value);
                },
                groupValue: _controller.transportType,
              )
          ),
        ),
        bottomNavigationBar: BottomFixedWidget(
          child: ButtonAppWidget(
            onPressed: () => _controller.goToTravelPath(context),
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
      type: MeansOfTransport.car,
    ),
    OptionItemModel(
      pathImage: Assets.plane,
      title: MeansOfTransport.plane.name,
      type: MeansOfTransport.plane,
    ),
    OptionItemModel(
      pathImage: Assets.truck,
      title: MeansOfTransport.truck.name,
      type: MeansOfTransport.truck,
    ),
    OptionItemModel(
      pathImage: Assets.van,
      title: MeansOfTransport.van.name,
      type: MeansOfTransport.van,
    ),
    OptionItemModel(
      pathImage: Assets.motorcycle,
      title: MeansOfTransport.motorcycle.name,
      type: MeansOfTransport.motorcycle,
    ),
    OptionItemModel(
      pathImage: Assets.bike,
      title: MeansOfTransport.bike.name,
      type: MeansOfTransport.bike,
    ),
    OptionItemModel(
      pathImage: Assets.train,
      title: MeansOfTransport.train.name,
      type: MeansOfTransport.train,
    ),
    OptionItemModel(
      pathImage: Assets.bus,
      title: MeansOfTransport.bus.name,
      type: MeansOfTransport.bus,
    ),
    OptionItemModel(
      pathImage: Assets.boat,
      title: MeansOfTransport.boat.name,
      type: MeansOfTransport.boat,
    ),
  ];