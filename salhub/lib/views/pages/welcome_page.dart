import 'package:flutter/material.dart';
import 'package:salhub/views/pages/login_page.dart';
import 'package:salhub/views/widgets/salhub_widget.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            SalhubWidget(),
            SizedBox(height: 20),
            Text(
              "Squirrel Acorn Learning Hub",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 57),
            SizedBox(
              height: 196,
              child: Image.asset('./assets/images/profile.png'),
            ),
            SizedBox(height: 57),

            Text(
              "Let’s study with SAL Hub",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),

            FilledButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFFD9D9D9),
                foregroundColor: Color(0xFF3F2514),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                side: const BorderSide(color: Color(0xFF3F2514), width: 1),
              ),
              child: Text("Get Started"),
            ),
          ],
        ),
      ),
    );
  }
}
