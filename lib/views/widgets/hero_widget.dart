import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: 'h1',
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25.0),
        child: Container(
          width: double.infinity,
          height: 300.0,
          child: Image.asset(
            'assets/images/bigsur.jpg',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.darken,
          ),
        ),
      ),
    );
  }
}
