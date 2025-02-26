import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';
import 'package:lottie/lottie.dart';

import 'login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset('assets/lotties/anime.json', height: 200.0),
                kTextStyle.boxBetween,
                FittedBox(
                  child: Text(
                    'Solarity',
                    style: TextStyle(
                      fontSize: 50.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 20.0,
                      color: Colors.teal,
                    ),
                  ),
                ),
                kTextStyle.boxBetween,
                FilledButton(
                  style: FilledButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(
                            title: 'Register',
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Get Started',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: Size(double.infinity, 40.0),
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LoginPage(
                            title: 'Login',
                          );
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
