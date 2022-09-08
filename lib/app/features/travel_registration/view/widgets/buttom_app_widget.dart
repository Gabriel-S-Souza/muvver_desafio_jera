import 'package:flutter/material.dart';

class ButtonAppWidget extends StatelessWidget {
  const ButtonAppWidget({
    Key? key, 
    this.isLoading = false, 
    required this.title,
    this.onPressed, 
  }) : super(key: key);
  final bool isLoading;
  final VoidCallback? onPressed;
  final String title;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => ElevatedButton(
      style: ElevatedButton.styleFrom(
        fixedSize: Size(constraints.maxWidth, 48),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
      ),
      onPressed: isLoading
          ? null
          : onPressed,
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline5
            !.copyWith(
              color: Theme.of(context).colorScheme.background,
              fontWeight: FontWeight.w600
            )
      ),
    )
  );
}