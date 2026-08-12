import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/lomhat/correct_dialog_widget.dart';
import 'package:salhub/views/widgets/lomhat/incorrect_dialog_widget.dart';

class QuizeWidget extends StatelessWidget {
  const QuizeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        leading: BackButtonWidget(),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Text("កម្រិត ១", style: TextStyle(fontSize: 20)),
              Text("Level 1", style: TextStyle(fontSize: 20)),
              SizedBox(height: 20),

              Text(
                "១. តើព្យព្ជានៈខ្មែរមានប៉ុន្មានតួ?",
                style: TextStyle(fontSize: 24),
              ),
              Text(
                "​​How many Khmer consonants there?",
                style: TextStyle(fontSize: 15),
              ),
              SizedBox(height: 50),

              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF0097B5),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "៣៣​ តួ (33)",
                  style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                ),
              ),
              SizedBox(height: 10),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFBA0303),
                  minimumSize: Size(double.infinity, 50),

                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "៣១​ តួ (31)",
                  style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                ),
              ),
              SizedBox(height: 10),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFF608B04),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return CorrectDialogWidget(nextPage: Placeholder());
                    },
                  );
                },
                child: Text(
                  "៣៣​ តួ (33)",
                  style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                ),
              ),
              SizedBox(height: 10),
              FilledButton(
                style: FilledButton.styleFrom(
                  backgroundColor: Color(0xFFFFF700),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return IncorrectDialogWidget();
                    },
                  );
                },
                child: Text(
                  "៣៣​ តួ (33)",
                  style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                ),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
