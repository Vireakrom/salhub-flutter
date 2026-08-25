import 'package:flutter/material.dart';
import 'package:salhub/views/pages/grammar/grammar_lesson1.dart';
import 'package:salhub/views/pages/grammar/grammar_lesson2.dart';
import 'package:salhub/views/pages/grammar/grammar_lesson3.dart';
import 'package:salhub/views/pages/grammar/grammar_lesson4.dart';
import 'package:salhub/views/pages/grammar/grammar_lesson5.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/grammar/grmmar_card_widget.dart';

class GrammarPage extends StatelessWidget {
  const GrammarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
       
          centerTitle: true,
        ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/sc_background.png'),
            fit: BoxFit.contain,
            colorFilter: ColorFilter.mode(
              Colors.white.withValues(alpha: 0.1),
              BlendMode.dstATop,
            ),
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Text(
                  "រៀនវេយ្យាករណ៍\n"
                  "Grammer",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF6D3F21),
                  ),
                ),
              ),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
                crossAxisCount: 2,
                children: <Widget>[
                  GrammarCardWidget(
                    title: "កម្រិត ១",
                    description: "Level 1",
                    nextPage: GrammarLesson1(),
                  ),
                  GrammarCardWidget(
                    title: "កម្រិត ២",
                    description: "Level 2",
                    nextPage: GrammarLesson2(),
                  ),
                  GrammarCardWidget(
                    title: "កម្រិត ៣",
                    description: "Level 3",
                    nextPage: GrammarLesson3(),
                  ),
                  GrammarCardWidget(
                    title: "កម្រិត ៤",
                    description: "Level 4",
                    nextPage: GrammarLesson4(),
                  ),
                  GrammarCardWidget(
                    title: "កម្រិត ៥",
                    description: "Level 5",
                    nextPage: GrammarLesson5(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
