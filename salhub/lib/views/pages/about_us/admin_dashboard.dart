import 'package:flutter/material.dart';
import 'package:salhub/views/pages/general_culture/general_culture_page.dart';
import 'package:salhub/views/pages/grammar/grammar_page.dart';
import 'package:salhub/views/pages/jomrous/jomrous_page.dart';
import 'package:salhub/views/pages/numeric/numeric_page.dart';
import 'package:salhub/views/pages/rean_peasa/rean_peasa_page.dart';
import 'package:salhub/views/pages/sraknisaii/sraknisaii_page.dart';

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

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
                            "សូមស្វាគមន៍",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Color(0xFF6D3F21),
                            ),
                          ),
                          Text(
                            "រៀនភាសាខ្មែរ",
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
                    child: GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      primary: false,
                      padding: const EdgeInsets.all(20),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 2,
                      children: <Widget>[
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SraknisaiiPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFFF7BE2D),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFFFFF3B1),
                                              Color(0xFFF8F1CD),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "ក",
                                            style: TextStyle(
                                              color: Color(0xFFF7BE2D),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ិ",
                                            style: TextStyle(
                                              color: Color(0xFFF7BE2D),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "ឥ",
                                            style: TextStyle(
                                              color: Color(0xFFF7BE2D),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "អក្សរខ្មែរ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF6D3F21),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      FittedBox(
                                        child: Text(
                                          "ព្យញ្ជនៈ ស្រះនិស្យ័យ ស្រះពេញតួរ",
                                          style: TextStyle(
                                            fontSize: 10,
                                            color: Color(0xFF6D3F21),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NumericPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF0097B5),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFFB8F8FE),
                                              Color(0xFFCDF6FA),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "១",
                                            style: TextStyle(
                                              color: Color(0xFF0097B5),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "២",
                                            style: TextStyle(
                                              color: Color(0xFF0097B5),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "៣",
                                            style: TextStyle(
                                              color: Color(0xFF0097B5),
                                              fontSize: 36,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        "រៀនលេខខ្មែរ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF01518A),
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GrammarPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFFB342FF),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFFE6B8FE),
                                              Color(0xFFF8E2FF),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          './assets/images/book.png',
                                        ),
                                      ),
                                      Text(
                                        "រៀនវេយ្យាករណ៍",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF510286),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ReanPeasaPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFFBA0303),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFFFF8373),
                                              Color(0xFFFFE8F2),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          './assets/images/message.png',
                                        ),
                                      ),
                                      Text(
                                        "រៀនភាសាប្រចាំថ្ងៃ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF790303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => JomrousPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFF21DB81),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFF25E555),
                                              Color(0xFF8CF1B0),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          './assets/images/hand.png',
                                        ),
                                      ),
                                      Text(
                                        "ភាសាចម្រុះ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF790303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => GeneralCulturePage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: Color(0xFFBC850C),
                                width: 2,
                              ),
                            ),
                            child: Stack(
                              alignment: Alignment.center,

                              children: [
                                Positioned.fill(
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(18),
                                    child: ShaderMask(
                                      blendMode: BlendMode.srcIn,
                                      shaderCallback: (bounds) =>
                                          LinearGradient(
                                            colors: [
                                              Color(0xFFFFC973),
                                              Color(0xFFFFF2DD),
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ).createShader(bounds),
                                      child: Container(color: Colors.white),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SizedBox(
                                        child: Image.asset(
                                          './assets/images/eye_book.png',
                                        ),
                                      ),
                                      Text(
                                        "វប្បធម៍ទូរទៅ",
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF790303),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 5),
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
