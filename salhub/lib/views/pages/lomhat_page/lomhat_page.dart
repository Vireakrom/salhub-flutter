import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/lomhat/lomhat_list_tile_widget.dart';
import 'package:salhub/views/widgets/lomhat/quize_widget.dart';
import 'package:salhub/views/widgets/lomhat/start_question_widget.dart';

class LomhatPage extends StatelessWidget {
  const LomhatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "លំហាត់",
          style: TextStyle(fontSize: 24, color: Color(0xFF3F2514)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 1",
                khTxt: "កម្រិត​ ១",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: QuizeWidget(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFFA968),
                color2: Color(0xFFC25705),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ២",
                nextPage: StartQuestionWidget(
                  level: "២",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFCF3BFF),
                color2: Color(0xFF4B0064),
                engTxt: "Level 3",
                khTxt: "កម្រិត​ ៣",
                nextPage: StartQuestionWidget(
                  level: "៣",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF45FF6D),
                color2: Color(0xFF369B05),
                engTxt: "Level 4",
                khTxt: "កម្រិត​ ៤",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF257001),
                color2: Color(0xFF369B05),
                engTxt: "Level 5",
                khTxt: "កម្រិត​ ៥",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFF5C99FF),
                color2: Color(0xFF001B48),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៦",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF3C88),
                color2: Color(0xFF731439),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៧",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFB8F8FE),
                color2: Color(0xFF003C42),
                engTxt: "Coming soon",
                khTxt: "Level 9",
                nextPage: StartQuestionWidget(
                  level: "១",
                  nextPage: Placeholder(),
                ),
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFEEEB37),
                color2: Color(0xFFB9B306),
                engTxt: "Coming soon",
                khTxt: "Level 9",
                nextPage: Placeholder(),
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
