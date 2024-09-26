// Step 0.1 - Create a new Flutter project

// Step 0.2 - Import the material.dart file
import 'package:flutter/material.dart';
import 'package:dice_app/screens/dice_app.dart';

// Step 0.3 - Create a main function, return material app
void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false, // 0.3.1 add this to remove debug banner
    home: DiceApp(), // create new folder screens and dice_app.dart inside
  ));
}
