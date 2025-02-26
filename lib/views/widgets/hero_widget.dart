import 'package:flutter/material.dart';

class HeroWidget extends StatelessWidget {
  const HeroWidget({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Hero(
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
        ),
        FittedBox(
          child: Text(
            title,
            style: TextStyle(
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 10.0,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
