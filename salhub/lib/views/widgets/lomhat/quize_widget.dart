import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/lomhat/correct_dialog_widget.dart';
import 'package:salhub/views/widgets/lomhat/incorrect_dialog_widget.dart';

class QuizeWidget extends StatelessWidget {
  const QuizeWidget({
    super.key,
    required this.enLevel,
    required this.khLevel,
    required this.khQuestion,
    required this.enQuestion,
    required this.opOne,
    required this.opTwo,
    required this.opThree,
    required this.opFour,
    required this.nextPage,
    this.img,
    this.isLast,
  });
  final String enLevel;
  final String khLevel;
  final String khQuestion;
  final String enQuestion;
  final List<dynamic> opOne;
  final List<dynamic> opTwo;
  final List<dynamic> opThree;
  final List<dynamic> opFour;
  final Widget nextPage;
  final String? img;
  final bool? isLast;

  @override
  Widget build(BuildContext context) {
    void clickAnswer(bool answer) {
      bool realLast = false;
      if (isLast != null) {
        realLast = isLast!;
      }
      showDialog(
        context: context,
        builder: (context) {
          return answer
              ? CorrectDialogWidget(nextPage: nextPage, isLast: realLast)
              : IncorrectDialogWidget();
        },
      );
    }

    Widget showImg() {
      if (img == null) {
        return SizedBox(height: 0);
      } else {
        return Image.asset(img!);
      }
    }

    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100,
        backgroundColor: Colors.transparent,
        leading: BackButtonWidget(),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                Text("កម្រិត $khLevel", style: TextStyle(fontSize: 20)),
                Text("Level $enLevel", style: TextStyle(fontSize: 20)),
                SizedBox(height: 20),
                showImg(),
                Text(khQuestion, style: TextStyle(fontSize: 24)),
                Text(enQuestion, style: TextStyle(fontSize: 15)),
                SizedBox(height: 50),

                // One
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    backgroundColor: Color(0xFF0097B5),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    clickAnswer(opOne[1]);
                  },
                  child: Text(
                    opOne[0],
                    style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),

                // Two
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    backgroundColor: Color(0xFFBA0303),
                    minimumSize: Size(double.infinity, 50),

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    clickAnswer(opTwo[1]);
                  },
                  child: Text(
                    opTwo[0],
                    style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),
                // Three
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    backgroundColor: Color(0xFF608B04),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    clickAnswer(opThree[1]);
                  },
                  child: Text(
                    opThree[0],
                    style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),

                // Four
                FilledButton(
                  style: FilledButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 15,
                    ),
                    backgroundColor: Color(0xFFFFF700),
                    minimumSize: Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                  ),
                  onPressed: () {
                    clickAnswer(opFour[1]);
                  },
                  child: Text(
                    opFour[0],
                    style: TextStyle(color: Color(0xFF000000), fontSize: 30),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
