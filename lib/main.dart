import 'package:flutter/material.dart';
import 'app/app.dart';

void main() {
  ServiceLocator.setupLocator();

  runApp(const MyApp());
}