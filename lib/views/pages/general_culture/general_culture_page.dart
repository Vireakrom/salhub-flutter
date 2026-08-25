import 'package:flutter/material.dart';
import 'package:salhub/views/pages/general_culture/bonjeat_page.dart';
import 'package:salhub/views/pages/general_culture/geography.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GeneralCulturePage extends StatelessWidget {
  const GeneralCulturePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(0, 0, 0, 0),
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "វប្បធម៌ទូទៅ",
                style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "General​ culture",
                style: TextStyle(fontSize: 16, color: Color(0xFF790303)),
              ),
            ],
          ),
          SizedBox(height: 80),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GeographyPage()),
              );
            },
            child: Container(
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 231, 152),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFF7BE2D), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,

                  children: [
                    Text(
                      "ភូមិសាស្រ្ត",
                      style: TextStyle(fontSize: 24, color: Color(0xFF790303)),
                    ),
                    Text(
                      "Geography",
                      style: TextStyle(fontSize: 16, color: Color(0xFF790303)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BonjeatPage()),
              );
            },
            child: Container(
              width: screenWidth * 0.8,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 239, 231, 152),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Color(0xFFF7BE2D), width: 2),
              ),
              child: Padding(
                padding: const EdgeInsets.all(50),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "បុណ្យជាតិ",
                      style: TextStyle(fontSize: 24, color: Color(0xFF790303)),
                    ),
                    Text(
                      "National Holiday",
                      style: TextStyle(fontSize: 16, color: Color(0xFF790303)),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
