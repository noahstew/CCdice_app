//
import 'package:flutter/material.dart'; // Step 1.0 import material.dart

// Step 1.1 use awesome flutter widgets ext to create stless widget
// Step 1.2, add Scaffold() widget to return a hello world
// class DiceApp extends StatelessWidget {
//   const DiceApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Text('Hello World!'),
//     );
//   }
// }

// Step 1.3, look at what we need to make app and build text widgets
// class DiceApp extends StatelessWidget {
//   const DiceApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment:
//               MainAxisAlignment.center, // See what it does removing
//           children: [
//             Text(
//               'Dice Image',
//             ),
//             Text(
//               'Roll Button',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Step 1.5 Replace Column with widgets/dice_roller.dart file

import 'package:dice_app/widgets/dice_roller.dart'; // 1.5.1 import dice_roller.dart

const gradientColours = [
  Colors.black,
  Colors.white,
  Colors.black,
  Colors.white,
  Colors.black
];
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class DiceApp extends StatelessWidget {
  const DiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: gradientColours,
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(
          child: DiceRoller(), // 1.5.2 replace column with dice_roller.dart
        ),
      ),
    );
  }
}
