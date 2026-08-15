import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class GrammarLesson1 extends StatelessWidget {
  const GrammarLesson1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: BackButtonWidget(),
          title: const Text(
            "រៀនវេយ្យាករណ៍",
            style: TextStyle(fontSize: 25,color: Color(0xFF6D3F21),),
          ),
          centerTitle: true,
        ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sc_background.png'),
                  colorFilter: ColorFilter.mode(
                    Colors.white.withValues(alpha: 0.1),
                    BlendMode.dstATop,
                  ),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                // Your content here
              ],
            ),
          ),
        ],
      ),
    );
  }
}