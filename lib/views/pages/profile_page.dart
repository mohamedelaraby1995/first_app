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

  bool? isChecked = true;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Center(
        child: Column(
          children: [
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
              onEditingComplete: () {
                setState(() {});
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              controller.text,
            ),
            SizedBox(
              height: 40.0,
            ),
            Checkbox(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            CheckboxListTile(
              tristate: true,
              value: isChecked,
              title: Text('services'),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
