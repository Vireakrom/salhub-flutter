import 'package:flutter/material.dart';

class IncorrectDialogWidget extends StatelessWidget {
  const IncorrectDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Color(0xFFFDFBE9),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: .min,
          children: [
            Icon(Icons.close, color: Colors.red, size: 100.0),
            Text("ចម្លើយមិនត្រឹមត្រូវ", style: TextStyle(fontSize: 32)),
            Text("Wrong Answer", style: TextStyle(fontSize: 20)),
            Text("សាកល្បងម្តងទៀត", style: TextStyle(fontSize: 20)),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Try Again", style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
