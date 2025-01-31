import 'package:flutter/material.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.indigo,
  iconTheme: const IconThemeData(color: Colors.indigo),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 24),
    titleMedium: TextStyle(fontSize: 20),
    headlineMedium: TextStyle(fontSize: 18),
    labelMedium: TextStyle(fontSize: 16),
    bodyMedium: TextStyle(fontSize: 14),
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.indigo,
  cardColor: Colors.grey.shade200,
  dividerColor: Colors.white,
  iconTheme: const IconThemeData(color: Colors.white),
  textTheme: const TextTheme(
    displayLarge: TextStyle(color: Colors.white, fontSize: 24),
    titleMedium: TextStyle(color: Colors.white, fontSize: 20),
    labelMedium: TextStyle(color: Colors.white, fontSize: 16),
    bodyMedium: TextStyle(color: Colors.white, fontSize: 14),
    headlineMedium: TextStyle(color: Colors.white, fontSize: 10),
  ),
);
