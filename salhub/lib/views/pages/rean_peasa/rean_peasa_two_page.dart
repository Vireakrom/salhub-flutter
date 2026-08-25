import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaTwoPage extends StatefulWidget {
  const ReanPeasaTwoPage({super.key});

  @override
  State<ReanPeasaTwoPage> createState() => _ReanPeasaTwoPageState();
}

class _ReanPeasaTwoPageState extends State<ReanPeasaTwoPage> {
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
        title: Text(
          "ទំនាក់ទំនងប្រចាំថ្ងៃ",
          style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
        ),
        centerTitle: true,
      ),
      body: Container(
        width: screenWidth,
        height: screenHeight,
        padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5),
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
              LeftMessageWidget(
                khmerText: "តើអ្នកសុខសប្បាយទេ?🙏",
                englishText: "How are you?",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "ខ្ញុំសុខសប្បាយ​ អរគុណ។ ចុះអ្នកវិញ?",
                englishText: "I’m fine.Thank you.And you?",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "ខ្ញុំក៏សុខសប្បាយដែរ។",
                englishText: "I’m fine.",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: " តើអ្នកមកពីណាដែរ?",
                englishText: "Where are you from?",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "ខ្ញុំមកពីសាលារៀន៕",
                englishText: "I am from school.",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "រៀនអ្វីខ្លះ?",
                englishText: "What did you learn?",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "មិនចេះទេ",
                englishText: "I do not Know.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
