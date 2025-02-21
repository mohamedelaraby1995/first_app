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
            Checkbox.adaptive(
              tristate: true,
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            CheckboxListTile.adaptive(
              tristate: true,
              value: isChecked,
              title: Text('services'),
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value;
                });
              },
            ),
            SizedBox(
              height: 40.0,
            ),
            Switch.adaptive(
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            SwitchListTile.adaptive(
              title: Text('click Me'),
              value: isSwitched,
              onChanged: (bool value) {
                setState(() {
                  isSwitched = value;
                });
              },
            ),
            Slider.adaptive(
              max: 100,
              divisions: 10,
              value: sliderValue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            // GestureDetector(
            //   child: Image.asset('assets/images/bg.jpg'),
            //   onTap: () {
            //     print('image tapped');
            //   },
            // ),

            InkWell(
              splashColor: Colors.teal,
              onTap: () {
                print('object;');
              },
              child: Container(
                height: 100.0,
                width: double.infinity,
                color: Colors.white12,
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
