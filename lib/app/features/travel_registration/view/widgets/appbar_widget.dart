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
    Widget? bottom
    }) : super(
    key: key,
    surfaceTintColor: Theme.of(context).colorScheme.secondary,
    backgroundColor: Theme.of(context).colorScheme.secondary,
    elevation: 0,
    leading: IconButton(
      onPressed: () => Navigator.pop(context),
      icon: Icon(
        backIcon,
        color: Theme.of(context).colorScheme.background,
      )
    ),
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline6,
    ),
    centerTitle: true,
    actions: showAction 
        ? [
          TextButton(
            onPressed: () => Navigator
                .pushNamedAndRemoveUntil(context, '/home', (route) => false),
            child: Text(
              'Cancelar',
              style: TextStyle(
                color: Theme.of(context).colorScheme.background
              ),
            )
          ),
        ]
      : null,
    bottom: sectionTitle != null
        ? PreferredSize(
          preferredSize: Size.fromHeight(
            bottomHeight ?? MediaQuery.of(context).size.height * 0.1
          ),
          child: Column(
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
              bottom ?? const SizedBox()
            ],
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