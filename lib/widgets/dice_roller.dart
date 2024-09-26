// import 'package:flutter/material.dart'; // Step 2.0 import material.dart
// import 'dart:math';

// final randomizer = Random();

// // Step 2.1 create a stateful widget called DiceRoller using extensions
// class DiceRoller extends StatefulWidget {
//   const DiceRoller({super.key});

//   @override
//   State<DiceRoller> createState() => _DiceRollerState();
// }

// class _DiceRollerState extends State<DiceRoller> {
//   // Step 2.2 build widget
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       // 2.2.1 replace returned with Column
//       mainAxisSize: MainAxisSize.min,
//       children: [
//         Image.asset(
//           // 2.2.2 add Image.asset for dice1.png
//           'lib/assets/dice1.png',
//           width: 200,
//         ),
//         const SizedBox(height: 20), // 2.2.4 for spacing
//         ElevatedButton(
//           // 2.2.5 add Button with onpressed anon function
//           onPressed: () {},
//           style: ElevatedButton.styleFrom(
//             // 2.2.6 add style for button
//             backgroundColor: Colors.white,
//           ),
//           child: const Text(
//             // 2.2.7 add text for button
//             'Roll the Die',
//             style: TextStyle(color: Colors.black, fontSize: 20), // 2.2.8
//           ),
//         ),
//       ],
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'dart:math'; // 2.3.3.1 import math library

final randomizer = Random(); // 2.3.3.2 add randomizer object

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentDiceRoll = 1; // 2.3.1 add currentDiceRoll variable

  void rollDice() {
    // 2.3.6 add rollDice function (do without set state function first)
    setState(() {
      currentDiceRoll = randomizer.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'lib/assets/dice$currentDiceRoll.png', // 2.3.2 inject variable into string
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed:
              rollDice, // 2.3.5 test randomizer w/ print statement then add rollDice
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
          ),
          child: const Text(
            'Roll the Die',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
        ),
      ],
    );
  }
}
