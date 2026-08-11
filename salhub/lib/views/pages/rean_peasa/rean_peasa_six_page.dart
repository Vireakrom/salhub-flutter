import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/left_message_widget.dart';
import 'package:salhub/views/widgets/rean_peasa_widget/right_message_widget.dart';

class ReanPeasaSixPage extends StatefulWidget {
  const ReanPeasaSixPage({super.key});

  @override
  State<ReanPeasaSixPage> createState() => _ReanPeasaSixPageState();
}

class _ReanPeasaSixPageState extends State<ReanPeasaSixPage> {
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
          "ការពិភាក្សាអំពីគម្រោង និងអនាគត",
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
                khmerText: "តើអ្នកមានផែនការអ្វីសម្រាប់អនាគត?",
                englishText: "What are your plans for the future?",
                audioPath: "audio/hello.mp3",
              ),
              SizedBox(height: 10),
              RightMessageWidget(
                khmerText: "ខ្ញុំមានគម្រោងរៀនជំនាញថ្មី និងអភិវឌ្ឍខ្លួន។",
                englishText: "I plan to learn new skills and develop myself.",
                audioPath: "audio/what_your_name.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: "តើគោលបំណងរបស់អ្នកគឺអ្វី?",
                englishText: "What are your goals?",
                audioPath: "audio/my_name_is.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "ខ្ញុំចង់មានការងារល្អ និងសម្រេចគោលដៅរបស់ខ្ញុំ។",
                englishText: "I want to have a good job and achieve my goals.",
                audioPath: "audio/year_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: " តើអ្នកមានក្តីស្រមៃអ្វី?",
                englishText: "What are your dreams?",
                audioPath: "audio/year_answer.mp3",
              ),
              SizedBox(height: 10),

              RightMessageWidget(
                khmerText: "ខ្ញុំចង់បង្កើតអាជីវកម្មនៅថ្ងៃអនាគត។",
                englishText: "I want to start my own business in the future.",
                audioPath: "audio/country_question.mp3",
              ),
              SizedBox(height: 10),

              LeftMessageWidget(
                khmerText: " ខញុំសូមជូនពរឱ្យអ្នកជោគជ័យ។",
                englishText: "Great! I wish you success.",
                audioPath: "audio/country_answer.mp3",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
