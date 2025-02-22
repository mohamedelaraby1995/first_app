import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key, required this.title});

  final String title;

  @override
  State<SettingPage> createState() => _SettingPageState();
}

//TODO: Inset text to hold the text from the textfield data.
//TODO: Setup the controller of the TextField.
class _SettingPageState extends State<SettingPage> {
  TextEditingController controller = TextEditingController();

  // widgets values
  bool? isChecked = true;
  bool isSwitched = true;
  double sliderValue = 0.0;
  String? menuItem = 'e1';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        automaticallyImplyLeading: false,
        leading: BackButton(
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            children: [
              DropdownButton(
                value: menuItem,
                items: [
                  DropdownMenuItem(
                    value: 'e1',
                    child: Text('element 1'),
                  ),
                  DropdownMenuItem(
                    value: 'e2',
                    child: Text('element 2'),
                    onTap: () {},
                  ),
                  DropdownMenuItem(
                    value: 'e3',
                    child: Text('element 3'),
                  ),
                ],
                onChanged: (String? value) {
                  setState(() {
                    menuItem = value;
                  });
                },
              ),
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
      )),
    );
  }
}
