import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaFivePage extends StatefulWidget {
  const ReanPeasaFivePage({super.key});

  @override
  State<ReanPeasaFivePage> createState() => _ReanPeasaFivePageState();
}

class _ReanPeasaFivePageState extends State<ReanPeasaFivePage> {
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
          "ទំនាក់ទំនងក្នុងការងារ",
          style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
        ),
        centerTitle: true,
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
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
                khmerText: "សួស្តី។ ខ្ញុំចង់ដាក់ពាក្យធ្វើការ។",
                englishText: "Hello. I would like to apply for a job.",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "សួស្តី។ តើអ្នកចង់ដាក់ពាក្យតំណែងអ្វី?",
                englishText:
                    "Hello. What position would you like to apply for?",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "ខ្ញុំចង់ដាក់ពាក្យតំណែងនេះ។",
                englishText: "I would like to apply for this position.",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "ហេតុអ្វីអ្នកចាប់អារម្មណ៍ការងារនេះ?",
                englishText: "Why are you interested in this job?",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText:
                    "ខ្ញុំមានចំណាប់អារម្មណ៍លើការងារនេះ​ ព្រោះវាត្រូវនឺងជំណាញរបស់ខ្ញុំ៕",
                englishText:
                    "I am interested in this job because it requires my skills.",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "អរគុណសម្រាប់ការមកសម្ភាសន៍។",
                englishText: "Thank you for the interview.",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "សូមអរគុណសម្រាប់ឱកាសនេះ។",
                englishText: "Thank you for the opportunity.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
