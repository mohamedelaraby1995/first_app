import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifier.dart';
import 'package:flutter_app/views/pages/home_page.dart';
import 'package:flutter_app/views/pages/profile_page.dart';
import 'package:flutter_app/views/pages/setting_page.dart';
import 'package:flutter_app/views/widgets/navbar_widget.dart';

// List of application pages
List<Widget> pages = [
  HomePage(title: 'Home page'),
  ProfilePage(),
];

class WidgetTree extends StatefulWidget {
  const WidgetTree({super.key});

  @override
  State<WidgetTree> createState() => _WidgetTreeState();
}

class _WidgetTreeState extends State<WidgetTree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Solarity'),
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return HomePage(title: 'Home page');
                },
              ),
            );
          },
          icon: Icon(Icons.home_filled),
        ),
        actions: [
          IconButton(
            onPressed: () {
              // Reverse the value of dark mode notifier
              isDarkModeNotifier.value = !isDarkModeNotifier.value;
            },
            icon: ValueListenableBuilder(
              valueListenable: isDarkModeNotifier,
              builder: (context, isDarkMode, child) {
                return Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode);
              },
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return SettingPage(title: 'Setting up');
                  },
                ),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ValueListenableBuilder(
          valueListenable: selectedPageNotifier,
          builder: (context, selectedPage, child) {
            return pages.elementAt(selectedPage);
          }),
      bottomNavigationBar: const NavbarWidget(),
    );
  }
}
