import 'package:flutter/material.dart';
import 'package:udemy_first_project/dice_roller.dart';

// ignore: must_be_immutable
class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, this.color3, {super.key});
  //= Colors.deepPurple;
  final Color color1;
  final Color color2;
  final Color color3;
  
//= const Color.fromRGBO(99, 53, 107, 1);
  //= const Color.fromARGB(255, 151, 47, 116);

  final Alignment beginAlignment = Alignment.topLeft;
  final Alignment endAlignment = Alignment.bottomRight;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: beginAlignment,
            end: endAlignment,
            colors: [color1, color2, color3]),
      ),
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }

  
}
