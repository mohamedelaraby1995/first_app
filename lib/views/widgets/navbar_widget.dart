import 'package:flutter/material.dart';
import 'package:flutter_app/data/notifier.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home_filled), label: 'Home'),
              NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
            ],
            selectedIndex: selectedPage,
            onDestinationSelected: (int value) {
              selectedPageNotifier.value = value;
            });
      },
    );
  }
}
