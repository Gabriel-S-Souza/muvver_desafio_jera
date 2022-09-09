import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    Key? key, 
    required BuildContext context,
    required String title,
    IconData? backIcon = Icons.arrow_back,
    bool showAction = false,
    String? sectionTitle,
    double? bottomHeight,
    Widget? bottom,
    VoidCallback? onPressed
    }) : super(
    key: key,
    surfaceTintColor: Theme.of(context).colorScheme.secondary,
    backgroundColor: Theme.of(context).colorScheme.secondary,
    elevation: 4,
    leading: IconButton(
      onPressed: onPressed ?? () => Navigator.pop(context),
      icon: Icon(
        backIcon,
        color: Theme.of(context).colorScheme.background,
      )
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6!.copyWith(
        fontWeight: FontWeight.w400,
        color: Theme.of(context).colorScheme.background.withOpacity(0.54)
      ),
    ),
    centerTitle: true,
    actions: showAction 
        ? [
          TextButton(
            onPressed: () => Navigator
                .pushNamedAndRemoveUntil(context, '/home', (route) => false),
            child: Text(
              'Cancelar',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                color: Theme.of(context).colorScheme.background,
                fontWeight: FontWeight.w700,
              )
            )
          ),
        ]
      : null,
    bottom: sectionTitle != null
        ? PreferredSize(
          preferredSize: Size.fromHeight(
            bottomHeight ?? MediaQuery.of(context).size.height * 0.1
          ),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: bottomHeight 
                  ?? MediaQuery.of(context).size.height * 0.1
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                  child: Text(
                    sectionTitle,
                    style: Theme.of(context).textTheme.headline3!.copyWith(
                      color: Theme.of(context).colorScheme.background
                    )
                  ),
                ),
                Expanded(child: bottom ??  const SizedBox())
              ],
            ),
          )
        )
        : null
    
  ) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
      statusBarColor: Theme.of(context).colorScheme.secondary,
    statusBarIconBrightness: Brightness.light
  ));
  }
}