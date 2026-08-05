import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';

class NavbarWidget extends StatelessWidget {
  const NavbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: selectedPageNotifier,
      builder: (context, selectedPage, child) {
        return NavigationBar(
          destinations: [
            NavigationDestination(icon: Icon(Icons.home), label: "ទំព័រដើម"),
            NavigationDestination(icon: Icon(Icons.file_copy), label: "លំហាត់"),
            NavigationDestination(icon: Icon(Icons.grade), label: "របាយការណ៏"),
            NavigationDestination(icon: Icon(Icons.person), label: "ខ្ញុំ"),
          ],
          onDestinationSelected: (int value) {
            selectedPageNotifier.value = value;
          },
          selectedIndex: selectedPage,
        );
      },
    );
  }
}
