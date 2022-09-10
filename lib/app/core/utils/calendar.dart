// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../app.dart';


mixin Calendar {
  Future<String> selectDate(BuildContext context) async {
    final DateTime? picked = await showRoundedDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(DateTime.now().year - 15),
      lastDate: DateTime(DateTime.now().year + 15),
      height: MediaQuery.of(context).size.height * 0.48,
      locale: const Locale('pt', 'BR'),
      textNegativeButton: 'Cancel',
      theme: ThemeData(
        accentColor: Theme.of(context).colorScheme.primary,
        primaryColor: Theme.of(context).colorScheme.primary
      ),
      headerDecoration: const BoxDecoration(
        border: Border(
            bottom: BorderSide(
              width: 3,
            ),
          ) 
      ),
      separator: Container(
        color: Theme.of(context).colorScheme.tertiary,
        height: 1,
      ),
      styleDatePicker: MaterialRoundedDatePickerStyle(
        textStyleButtonNegative: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
        textStyleButtonPositive: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 16
        ),
        paddingMonthHeader: const EdgeInsets.symmetric(vertical: 12),
        backgroundHeader: Theme.of(context).colorScheme.background,
        textStyleYearButton: TextStyle(
          color: Theme.of(context).colorScheme.tertiary,
          fontSize: 18
        ),
        textStyleDayButton: Theme.of(context).textTheme.headline1!,
      )
    );
    if (picked != null) {
        return DateFormat('dd/MM/yyyy').format(picked);
    } else {
      return '';
    }
  }
}