import 'package:flutter/material.dart';
import 'dart:math';

Random randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  int greenDice = randomizer.nextInt(6) + 1;
  int redDice = randomizer.nextInt(6) + 1;

  void rollDice() {
    setState(() {
      greenDice = randomizer.nextInt(6) + 1;
      redDice = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 40, 42, 54),
      appBar: AppBar(
        title: Text(
          'Dice Roller App',
          style: TextStyle(color: Color.fromARGB(255, 248, 248, 242)),
        ),
      ),
      body: Center(
        child: GestureDetector(
          onTap: rollDice,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Expanded(
                  child: Image.asset('assets/images/green-dice-$greenDice.png'),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Image.asset('assets/images/red-dice-$redDice.png'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
