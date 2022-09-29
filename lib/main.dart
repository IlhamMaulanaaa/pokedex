import 'package:flutter/material.dart';
import 'package:pokedex/screens/landing_screen.dart';

void main() {
  runApp(const pokedex());
}

class pokedex extends StatelessWidget {
  const pokedex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LandingScreen(

      ),
    );
  }
}
