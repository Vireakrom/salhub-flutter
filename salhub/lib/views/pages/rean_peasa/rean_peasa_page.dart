import 'package:flutter/material.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_five_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_four_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_one_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_six_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_three_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_two_page.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/level_widget.dart';

class ReanPeasaPage extends StatelessWidget {
  const ReanPeasaPage({super.key});

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
                  "រៀនភាសាប្រចាំថ្ងៃ\n"
                  "Daily communicate",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF790303),
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
                  LevelWidget(
                    title: "កម្រិត ១",
                    description: "Level 1",
                    nextPage: ReanPeasaOnePage(),
                  ),
                  LevelWidget(
                    title: "កម្រិត ២",
                    description: "Level 2",
                    nextPage: ReanPeasaTwoPage(),
                  ),
                  LevelWidget(
                    title: "កម្រិត ៣",
                    description: "Level 3",
                    nextPage: ReanPeasaThreePage(),
                  ),
                  LevelWidget(
                    title: "កម្រិត ៤",
                    description: "Level 4",
                    nextPage: ReanPeasaFourPage(),
                  ),
                  LevelWidget(
                    title: "កម្រិត ៥",
                    description: "Level 5",
                    nextPage: ReanPeasaFivePage(),
                  ),
                  LevelWidget(
                    title: "កម្រិត ៦",
                    description: "Level 6",
                    nextPage: ReanPeasaSixPage(),
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
