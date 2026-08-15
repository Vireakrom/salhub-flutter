import 'package:flutter/material.dart';
import 'package:salhub/views/pages/sraknisaii/sraknisaii_one_page.dart';
import 'package:salhub/views/pages/sraknisaii/sraknisaii_three_page.dart';
import 'package:salhub/views/pages/sraknisaii/sraknisaii_two_page.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';
import 'package:salhub/views/widgets/level_widget.dart';
import 'package:salhub/views/widgets/sraknisaii_widget.dart';

class SraknisaiiPage extends StatelessWidget {
  const SraknisaiiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text(
          "រៀនអក្សរខ្មែរ ",
          style: TextStyle(fontSize: 25, color: Color(0xFF790303)),

        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('./assets/images/sc_background.png'),
              fit:BoxFit.contain,
              colorFilter: ColorFilter.mode(
                Colors.white.withValues(alpha: 0.1),
                BlendMode.dstATop,
              ),
            ),
          ),
          child: Column(
            children: [
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 50,
                mainAxisSpacing: 50,
                crossAxisCount: 2,
                children: <Widget>[
                  SrakNisaiiWidget(
                    title: "ព្យញ្ជនៈ",
                    nextPage: SraknisaiiOnePage(),
                  ),
                  SrakNisaiiWidget(
                    title: "ស្រះនិស្យ័យ",
                    nextPage: SraknisaiiTwoPage(),
                  ),
                  SrakNisaiiWidget(
                    title: "ស្រះពេញតួរ",
                    nextPage: SraknisaiiThreePage(),
                  ),
                ]
              ),
            ],

          ),
        ),
      ),
    );
  }
}
