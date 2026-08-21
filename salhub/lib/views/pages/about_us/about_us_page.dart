import 'package:flutter/material.dart';
import 'package:salhub/views/pages/about_us/admin_login_page.dart';
import 'package:salhub/views/pages/about_us/admin_dashboard.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double heroHeight = screenHeight * 0.7;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    SizedBox(
                      width: screenWidth,
                      height: heroHeight,
                      child: Image.asset(
                        './assets/images/home_background.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    FittedBox(
                      child: Column(
                        children: [
                          Text(
                            "អំពីកម្មវិធីយើង",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 36,
                              color: Color(0xFF608B04),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Transform.translate(
                  offset: const Offset(0, -30),
                  child: Container(
                    margin: const EdgeInsets.only(
                      top: 0,
                    ), // Adjust this value to shift your container up/down
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      color: Color(0xFFFFFDF0),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32),
                      ),
                    ),
                    child: Column(
                      children: [
                        Text(
                          "<< SAL Hub >>",
                          textAlign: .center,
                          style: TextStyle(fontSize: 19),
                        ),
                        Text(
                          "គឺជាកម្មវិធីអប់រំដែលបង្កើតឡើងដើម្បីជួយអ្នកគ្រប់គ្នារៀនភាសាខ្មែរបានងាយស្រួល និងសប្បាយរីករាយ។ ",
                          textAlign: .center,
                          style: TextStyle(fontSize: 19),
                        ),
                        Text(
                          "យើងមានបេសកកម្មក្នុងការជម្រុញការយល់ដឹងអំពីវប្បធម៌ខ្មែរតាមរយៈភាសា។",
                          textAlign: .center,
                          style: TextStyle(fontSize: 19),
                        ),
                         SizedBox(height: 20),

                FilledButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => AdminLoginPage()),
                    );
                  },
                  style: FilledButton.styleFrom(
                    backgroundColor: Color(0xFFD9D9D9),
                    foregroundColor: Color(0xFF3F2514),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    side: const BorderSide(color: Color(0xFF3F2514), width: 2),
                  ),
                  child: Text("Get Started"),
                ),
                        SizedBox(height: 20),
                        Divider(height: 0),
                        SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: .spaceEvenly,
                          children: [
                            Image.asset("assets/images/tiktok.png"),
                            Image.asset("assets/images/facebook.png"),
                            Image.asset("assets/images/youtube.png"),
                          ],
                        ),
                        SizedBox(height: 50),
                        
                      ],
                    ),
                  ),
                ),
              ],
            ),
            

            Positioned(
              right: 5,
              top: heroHeight - 200,
              child: Image.asset('./assets/images/background_logo.png'),
            ),
          ],
        ),
      ),
    );
  }
}
