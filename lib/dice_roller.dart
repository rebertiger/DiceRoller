import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }

}
var randomizer = Random(DateTime.now().millisecondsSinceEpoch);
class _DiceRollerState extends State<DiceRoller>{
  var activeDiceImage = "assets/images/dice/dice-1.png";
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              activeDiceImage,
              width: 180,
            ),
            TextButton(
              onPressed: rolldice,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(25),
                  foregroundColor: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 28,
                  )),
              child: const Text("Roll dice!"),
            )
          ],
        );
  }

  rolldice() {
    setState(() {
      int numSelected = randomizer.nextInt(6)+1;
      /*switch (numSelected){
        case 1: activeDiceImage = "assets/images/dice/dice-1.png";
        case 2: activeDiceImage = "assets/images/dice/dice-2.png";
        case 3: activeDiceImage = "assets/images/dice/dice-3.png";
        case 4: activeDiceImage = "assets/images/dice/dice-4.png";
        case 5: activeDiceImage = "assets/images/dice/dice-5.png";
        case 6: activeDiceImage = "assets/images/dice/dice-6.png";
      }*/
      activeDiceImage = "assets/images/dice/dice-$numSelected.png";

    });
  }
}