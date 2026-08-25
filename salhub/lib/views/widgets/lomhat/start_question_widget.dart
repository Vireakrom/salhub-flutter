import 'package:flutter/material.dart';

class StartQuestionWidget extends StatelessWidget {
  const StartQuestionWidget({
    super.key,
    required this.level,
    required this.nextPage,
  });
  final String level;
  final Widget nextPage;
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
            Text("មេរៀនទី$level", style: TextStyle(fontSize: 24)),
            SizedBox(height: 20),
            Text(
              "សូមស្វាគមន៍មកកាន់កម្រងសំណួរកម្រិត​ $level",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 57),
            SizedBox(
              // height: 196,
              child: Image.asset('./assets/images/background_logo.png'),
            ),

            SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FilledButton(
                  onPressed: () => Navigator.pop(context),
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFFBA0303),
                    foregroundColor: Color(0xFF3F2514),
                    minimumSize: const Size(150, 50),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text("ត្រឡប់ក្រោយ", style: TextStyle(fontSize: 20)),
                ),
                SizedBox(width: 10),
                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => nextPage),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFF0097B5),
                    foregroundColor: Color(0xFF3F2514),
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  child: Text("ចាប់ផ្តើម", style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
