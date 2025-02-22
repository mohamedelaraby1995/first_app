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
          height: 200.0,
          color: Colors.teal,
          child: Image.asset(
            'assets/images/bg.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
