import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app/app.dart';
import 'app/core/core.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light.copyWith(
    statusBarColor: CustomColors.white,
    statusBarIconBrightness: Brightness.dark
  ));
  
  runApp(const MyApp());
}