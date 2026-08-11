import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaFourPage extends StatefulWidget {
  const ReanPeasaFourPage({super.key});

  @override
  State<ReanPeasaFourPage> createState() => _ReanPeasaFourPageState();
}

class _ReanPeasaFourPageState extends State<ReanPeasaFourPage> {
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
          "ការធ្វើដំណើរទេសចរណ៍",
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
                khmerText: "សួស្តី! ខ្ញុំចង់ទៅលេងប្រាសាទអង្គរ។",
                englishText: "Hi!I want to visit Angkor Wat.",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "សួស្តី! អ្នកអាចទៅដោយតាក់ស៊ី ឬឡានក្រុងបាន។",
                englishText: "Hi!You can go by taxi or bus.",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "តម្លៃសំបុត្រប៉ុន្មាន?",
                englishText: "How much does the the ticket costs?",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "៧ ដុល្លារ។",
                englishText: "7 dollars.",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "តើបើកម៉ោងប៉ុន្មាន?",
                englishText: "What are the opening hours?",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "បើកពីម៉ោង ៥ ព្រឹកដល់ ៦ ល្ងាច។",
                englishText: "Open from 5am to 6pm.",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "អរគុណសម្រាប់ព័ត៌មាន។",
                englishText: "Thanks for the information.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
