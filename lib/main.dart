import 'package:dialup/Screens/homescreen.dart';
import 'package:flutter/material.dart';


/*
  Project Name : Dialup
  Project Authors : Vishal Mahato , Prabhat Kumar , Jay Kishan Mahat
  Creation Date : 4th april, 2025

*/
void main() {
  runApp(const Dialup());
}

class Dialup extends StatelessWidget {
  const Dialup({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}