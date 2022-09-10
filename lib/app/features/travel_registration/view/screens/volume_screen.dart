import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../app.dart';
import '../../../../core/core.dart';
import '../../models/models.dart';
import '../widgets/widgets.dart';

class VolumeScreen extends StatelessWidget {
  VolumeScreen({Key? key}) : super(key: key);

  final TravelRegistrationController _controller =
      GetIt.I.get<TravelRegistrationController>();

  @override
  Widget build(BuildContext context)  => SafeArea(
      child: Scaffold(
        appBar: AppBarWidget(
          context: context,
          title: 'Ser um Muvver',
          sectionTitle: '''O volume que você pode deslocar tem tamanho similar a quê?''',
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
                  _controller.setVolumeType(value);
                },
                groupValue: _controller.volumeType,
              )
          ),
        ),
        bottomNavigationBar: BottomFixedWidget(
          child: ButtonAppWidget(
            onPressed: () => _controller.goToWeight(context),
            title: 'Avançar' 
          ),
        )
      )
    );
}

final List<OptionItemModel> _options = [
    OptionItemModel(
      pathImage: Assets.envelope,
      title: Volume.envelope.name,
      type: Volume.envelope,
    ),
    OptionItemModel(
      pathImage: Assets.book,
      title: Volume.book.name,
      type: Volume.book,
    ),
    OptionItemModel(
      pathImage: Assets.shoeBox,
      title: Volume.shoeBox.name,
      type: Volume.shoeBox,
    ),
    OptionItemModel(
      pathImage: Assets.schoolbag,
      title: Volume.schoolbag.name,
      type: Volume.schoolbag,
    ),
    OptionItemModel(
      pathImage: Assets.suitcase,
      title: Volume.bigSuitcase.name,
      type: Volume.bigSuitcase,
    ),
    OptionItemModel(
      pathImage: Assets.bigBox,
      title: Volume.bigBox.name,
      type: Volume.bigBox,
    ),
  ];