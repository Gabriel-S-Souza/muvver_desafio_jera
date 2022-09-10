import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import '../../../../app.dart';
import '../../../../core/core.dart';
import '../../models/models.dart';
import '../widgets/widgets.dart';

class WeightScreen extends StatelessWidget {
  WeightScreen({Key? key}) : super(key: key);

  final TravelRegistrationController _controller =
      GetIt.I.get<TravelRegistrationController>();

  @override
  Widget build(BuildContext context)  => SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          context: context,
          title: 'Ser um Muvver',
          sectionTitle: 'Qual o peso do volume?',
          showAction: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 0,
            left: 16,
            right: 16
          ),
          child: Observer(
            builder: (context) => ListOptionsWidget(
                title: 'Tamanho',
                options: _options,
                onChanged: (value) {
                  _controller.setWeightType(value);
                },
                groupValue: _controller.weight,
              )
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
      pathImage: Assets.balance,
      title: Weight.one.name,
      type: Weight.one,
    ),
    OptionItemModel(
      pathImage: Assets.balance,
      title: Weight.five.name,
      type: Weight.five,
    ),
    OptionItemModel(
      pathImage: Assets.balance,
      title: Weight.tem.name,
      type: Weight.tem,
    ),
    OptionItemModel(
      pathImage: Assets.balance,
      title: Weight.twenty.name,
      type: Weight.twenty,
    ),
    OptionItemModel(
      pathImage: Assets.balance,
      title: Weight.other.name,
      type: Weight.other,
    ),
  ];