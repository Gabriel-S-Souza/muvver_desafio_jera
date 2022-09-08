import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../../../app.dart';
import '../../../../core/core.dart';
import '../../models/models.dart';

class ListOptionsWidget extends StatelessWidget {
  const ListOptionsWidget({
    Key? key, 
    required this.title, 
    required this.options,
    required this.controller
  }) : super(key: key);
  final String title;
  final List<OptionItemModel> options;
  final TravelRegistrationController controller;

  @override
  Widget build(BuildContext context) => ListView(
      children: [
        const SizedBox(height: 24),
        Text(
          title,
          style: Theme.of(context).textTheme.headline4!.copyWith(
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.secondary
          ),
        ),
        ListView.separated(
          itemCount: options.length,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) => ListTile(
            onTap: () => controller.setModeOfTranport(
                options[index].transportType),
            contentPadding: const EdgeInsets
                .symmetric(vertical: 12, horizontal: 0),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  options[index].title,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.secondary
                  ),
                ),
                Observer(
                  builder: (context) => Radio<MeansOfTransport>(
                      value: options[index].transportType, 
                      groupValue: controller.modeOfTranport, 
                      onChanged: controller.setModeOfTranport
                    )
                )
              ],
            ),
            leading: FractionallySizedBox(
              heightFactor: 0.67,
              child: Image.asset(options[index].pathImage)
            ),
            ),
          separatorBuilder: (context, index) => 
            const Divider(
              height: 2,
            ),
        )
      ],
    );
}