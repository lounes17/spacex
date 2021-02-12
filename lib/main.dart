import 'package:flutter/material.dart';
import 'package:spacex/screen/welcome_screen.dart';

void main() {
  runApp(SpaceX());
}

class SpaceX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:WelcomeScreen() ,
      debugShowCheckedModeBanner: false,
      color: Colors.black,
    );
  }
}

