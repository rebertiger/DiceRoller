import 'package:flutter/material.dart';
import 'package:udemy_first_project/widgets/gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: GradientContainer(
              Colors.deepPurple,
              Color.fromRGBO(99, 53, 107, 1),
              Color.fromARGB(255, 151, 47, 116))),
    ),
  );
}
