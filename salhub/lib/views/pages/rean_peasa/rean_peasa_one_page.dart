import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaOnePage extends StatefulWidget {
  const ReanPeasaOnePage({super.key});

  @override
  State<ReanPeasaOnePage> createState() => _ReanPeasaOnePageState();
}

class _ReanPeasaOnePageState extends State<ReanPeasaOnePage> {
  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text(
          "ការណែនាំខ្លួន",
          style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: [
              LeftMessageWidget(
                khmerText: "ជម្រាបសួរ!",
                englishText: "Hello!",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "ជម្រាបសួរ!តើអ្នកឈ្មោះអ្វី?",
                englishText: "Hello! What is your name?",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "បាត/ចាស!ខ្ញុំឈ្មោះកំប្រុក🙏",
                englishText: "Yes!My name is Kombrok.",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "តើអ្នកអាយុប៉ុន្មាន?",
                englishText: "How old are you?",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "បាត/ចាស!ខ្ញុំអាយុ 18 ឆ្នាំ។",
                englishText: "Yes!I am 18 years old.",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "តើអ្នកមកពីប្រទេសណាដែរ?",
                englishText: "Where are you from?",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "ខ្ញុំមកពីប្រទេសកូរ៉េខាងត្បូង។",
                englishText: "I come from South Korea.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
