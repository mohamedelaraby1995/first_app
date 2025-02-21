import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

//TODO: Inset text to hold the text from the textfield data.
//TODO: Setup the controller of the TextField.
class _ProfilePageState extends State<ProfilePage> {
  TextEditingController controller = TextEditingController();

  // widgets values
  bool? isChecked = true;
  bool isSwitched = true;
  double sliderValue = 0.0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            InkWell(
              splashColor: Colors.teal,
              onTap: () {},
              child: Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
              ),
              child: Text('sign in'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {},
              child: Text('Sign in'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: Text('Sign in'),
            ),
            CloseButton(),
            BackButton(),
          ],
        ),
      ),
    ));
  }
}
