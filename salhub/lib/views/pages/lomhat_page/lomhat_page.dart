import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/lomhat/lomhat_list_tile_widget.dart';

class LomhatPage extends StatelessWidget {
  const LomhatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "លំហាត់",
          style: TextStyle(fontSize: 24, color: Color(0xFF3F2514)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 1",
                khTxt: "កម្រិត​ ១",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ២",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៣",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៤",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៥",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៦",
              ),
              SizedBox(height: 20),
              LomhatListTileWidget(
                color1: Color(0xFFFF7C7C),
                color2: Color(0xFFBF0101),
                engTxt: "Level 2",
                khTxt: "កម្រិត​ ៧",
              ),
              SizedBox(height: 100),
            ],
          ),
        ),
      ),
    );
  }
}
