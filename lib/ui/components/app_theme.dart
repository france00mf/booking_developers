import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Color.fromRGBO(136, 14, 79, 1);
  final primaryColorDark = Color(0xFF600027);
  final primaryColorLight = Color.fromRGBO(188, 71, 123, 1);
  final secondaryColor = Color.fromRGBO(0, 77, 64, 1);
  final secondaryClorDark = Color.fromRGBO(0, 37, 26, 1);
  final disabledColor = Colors.grey[400];
  final dividerColor = Colors.grey;
  final textTheme = TextTheme(
      headline1: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: primaryColorDark));
  final inputDecorationTheme = InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColorLight)),
      focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(color: primaryColorLight)),
      alignLabelWithHint: true);
  final buttonTheme = ButtonThemeData();

  return ThemeData();
}
