import 'package:flutter/material.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "S",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6A8926),
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  "A",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF7A22A),
                  ),
                ),
                SizedBox(width: 14),
                ShaderMask(
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xFF0097B5), Color(0xFFFFFFFF)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ).createShader(bounds),
                  child: Text(
                    "L",
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  "H",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F2514),
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  "u",
                  style: TextStyle(
                    fontSize: 48,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F2514),
                  ),
                ),
                SizedBox(width: 14),
                Text(
                  "b",
                  style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3F2514),
                  ),
                ),
              ],
            ),
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
              onPressed: () {},
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
