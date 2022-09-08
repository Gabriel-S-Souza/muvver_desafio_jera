import 'package:flutter/material.dart';

class CardFeatureWidget extends StatelessWidget {
  const CardFeatureWidget({
    Key? key, 
    required this.title, 
    required this.subtitle, 
    required this.image, 
    required this.onTap, 
  }) : super(key: key);
  final String title;
  final String subtitle;
  final ImageProvider image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) => LayoutBuilder(
    builder: (context, constraints) => Ink(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        gradient: LinearGradient(
          transform: const GradientRotation(-7),
          colors: [
            Theme.of(context).colorScheme.secondary,
            Theme.of(context).colorScheme.onSecondary,
          ]
        ),
      ),
      child: InkWell(
        onTap: onTap,
        highlightColor: Theme.of(context).colorScheme.onSecondary,
        splashColor: Theme.of(context).colorScheme.onSecondary,
        focusColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              child: Padding(
                padding: EdgeInsets
                    .fromLTRB(26, constraints.maxHeight * 0.25, 60, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets
                          .only(left: constraints.maxWidth * 0.08),
                      child: Text(
                        title,
                        style: Theme.of(context).textTheme.headline2
                          ?.copyWith(
                            color: Theme.of(context).colorScheme.background
                          ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      subtitle,
                      style: Theme.of(context).textTheme.subtitle1
                        ?.copyWith(
                          color: Theme.of(context).colorScheme.background
                        ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Image(
                image: image
              ),
            )
          ],
        ),
      ),
    )
  );
}