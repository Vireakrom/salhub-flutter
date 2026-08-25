import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaThreePage extends StatefulWidget {
  const ReanPeasaThreePage({super.key});

  @override
  State<ReanPeasaThreePage> createState() => _ReanPeasaThreePageState();
}

class _ReanPeasaThreePageState extends State<ReanPeasaThreePage> {
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
          "ការទិញទំនិញ ",
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
                khmerText: "ខ្ញុំចង់ទិញអាវមួយ៕ តើវាថ្លៃប៉ុន្មាន?",
                englishText: "I want to buy a shirt.How much does it cost?",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "សួស្ដី! អាវមួយថ្លៃ​ ២០០០០រៀល?",
                englishText: "Hello!A shirt costs 20000 riels.",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "តើអ្នកអាចចុះបន្តិចបានទេ?",
                englishText: "Can you please lower it a little?",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "សំទោស! ខ្ញុំមិនអាចចុះបានទេ៕",
                englishText: "Sorry!I can not lower it.",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "បាត/ចាស! ខ្ញុំយកអាវពីរ។",
                englishText: "Yes! I will take two shirts.",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "អរគុណសម្រាប់ការទិញក្នុងហាងយើង។",
                englishText: "Thank you for shopping at our store.",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "បាត/ចាស! អរគុណដូចគ្នា ។",
                englishText: "Yes!Thank you too.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
