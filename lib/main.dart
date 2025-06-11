import 'package:dialup/Screens/AppScreen/appscreen.dart';
import 'package:dialup/Screens/Homescreen/homescreen.dart';
import 'package:flutter/material.dart';


/*
  Project Name : Dialup
  Project Authors : Vishal Mahato , Prabhat Kumar , Jay Kishan Mahato
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
      home: Appscreen(),
    );
  }
}