import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/profile.png]"),
          ),
        ],
      ),
    );
  }
}
