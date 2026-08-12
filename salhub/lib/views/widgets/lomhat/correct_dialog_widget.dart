import 'package:flutter/material.dart';

class CorrectDialogWidget extends StatelessWidget {
  const CorrectDialogWidget({super.key, required this.nextPage});
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFFFDFBE9),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: .min,
          children: [
            Icon(Icons.check, color: Colors.greenAccent, size: 100.0),
            Text("ចម្លើយត្រឹមត្រូវ", style: TextStyle(fontSize: 32)),
            Text("Correct Answer", style: TextStyle(fontSize: 20)),
            Text("ល្អណាស់", style: TextStyle(fontSize: 20)),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Very Good", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
