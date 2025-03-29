import 'package:dice_roller_app/dice_roller.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData().copyWith(
        appBarTheme: ThemeData().appBarTheme.copyWith(
          backgroundColor: Color.fromARGB(255, 68, 71, 90),
        ),
      ),
      home: DiceRoller(),
    ),
  );
}
