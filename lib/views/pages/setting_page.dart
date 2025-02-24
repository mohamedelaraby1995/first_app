import 'package:flutter/material.dart';
import 'package:flutter_app/data/constants.dart';

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
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text('sign in'),
              ),
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
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      behavior: SnackBarBehavior.floating,
                      dismissDirection: DismissDirection.up,
                      content: Text('Snackbaar'),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text(' Open SnackBar'),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AboutDialog(
                        applicationIcon:
                            Icon(Icons.energy_savings_leaf_outlined),
                        applicationName: 'Solarity',
                        applicationVersion: '1.0.0',
                        children: [
                          Text('Welcome from Solarity'),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text(' Open Dialog'),
              ),
              SizedBox(
                height: 50.0,
              ),
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Welcome to solarity'),
                        content: Text('This is an energy appliction'),
                        icon: Icon(Icons.energy_savings_leaf_outlined),
                        iconColor: Colors.teal,
                        actions: [
                          FilledButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Close'),
                          ),
                        ],
                      );
                    },
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                ),
                child: Text(' Open Alert Dailog'),
              ),
              kTextStyle.boxBetween,
              Divider(
                color: Colors.teal,
                thickness: 2.0,
                endIndent: 250.0,
              ),
              Container(
                height: 100.0,
                child: VerticalDivider(
                  color: Colors.teal,
                  thickness: 100.0,
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
