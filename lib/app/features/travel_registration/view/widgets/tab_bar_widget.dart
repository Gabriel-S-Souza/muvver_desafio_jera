import 'package:flutter/material.dart';

class TabBarWidget extends StatefulWidget {
  const TabBarWidget({Key? key, this.onChanged}) : super(key: key);
  final void Function(ItemSelected)? onChanged;

  @override
  State<TabBarWidget> createState() => _TabBarWidgetState();
}

class _TabBarWidgetState extends State<TabBarWidget> {
  ItemSelected itemSelected = ItemSelected.routes;

  void changeItemSelected(ItemSelected itemSelected) {
    setState(() => this.itemSelected = itemSelected);
    widget.onChanged?.call(itemSelected);
  }

  @override
  Widget build(BuildContext context) => PhysicalModel(
    color: Theme.of(context).shadowColor,
    elevation: 4,
    child: Row(
        children: [
          Expanded(
            child: _TabItem(
              title: 'Rotas',
              isSelected: itemSelected == ItemSelected.routes,
              item: ItemSelected.routes,
              onTap: changeItemSelected,
            )
          ),
          Expanded(
            child: _TabItem(
              title: 'Mapa',
              isSelected: itemSelected == ItemSelected.map,
              item: ItemSelected.map,
              onTap: changeItemSelected,
            )
          ),
        ],
      ),
  );
}

class _TabItem extends StatelessWidget {
  const _TabItem({
    Key? key,
    required this.title, 
    required this.isSelected,
    required this.item,
    this.onTap,
  }) : super(key: key);
  final String title;
  final bool isSelected;
  final ItemSelected item;
  final void Function(ItemSelected)? onTap;

  @override
  Widget build(BuildContext context) => GestureDetector(
    onTap: () => onTap?.call(item),
    child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          border: Border(
            bottom: BorderSide(
              width: 3, 
              color: isSelected
                  ? Theme.of(context).colorScheme.background
                  : Theme.of(context).colorScheme.secondary
            ),
          )
        ),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
      ),
  );
}

enum ItemSelected {
  routes,
  map
}