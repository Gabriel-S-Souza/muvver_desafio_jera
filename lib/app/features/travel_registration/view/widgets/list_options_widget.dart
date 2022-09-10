import 'package:flutter/material.dart';
import '../../models/models.dart';

class ListOptionsWidget extends StatelessWidget {
  const ListOptionsWidget({
    Key? key, 
    required this.title, 
    required this.options, 
    required this.onChanged, 
    this.value, this.groupValue,
  }) : super(key: key);
  final String title;
  final List<OptionItemModel> options;
  final void Function(dynamic) onChanged;
  final dynamic value;
  final dynamic groupValue;

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
            onTap: () => onChanged(options[index].type),
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
                Radio(
                  value: options[index].type, 
                  groupValue: groupValue, 
                  onChanged: onChanged
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