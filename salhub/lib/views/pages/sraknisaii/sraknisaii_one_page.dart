import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class SraknisaiiOnePage extends StatefulWidget {
  const SraknisaiiOnePage({super.key});

  @override
  State<SraknisaiiOnePage> createState() => _SraknisaiiOnePageState();
}

class _SraknisaiiOnePageState extends State<SraknisaiiOnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text(
          "រៀនព្យញ្ជនៈ",
          style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
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
          child: Column(
            children: <Widget>[
              Text(
                "ព្យព្ជានៈនៅក្នុងភាសារខ្មែរមាន ៣៣តួ ចែកជា៥វគ្គ ឬ​២​ពួក និងមួយសេសវគ្គ។",
                style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
              ),
              const SizedBox(height: 15),

              //Row 1
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: " ក ខ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: " គ ​ឃ ​ង ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Colors.blue,
                            size: 30,
                          ),
                          onPressed: () {
                            print("Play audio");
                          },
                        ),
                      ],
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: " ច ​ឆ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: " ​ជ ​ឈ ​ញ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Colors.blue,
                            size: 30,
                          ),
                          onPressed: () {
                            print("Play audio");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "k kh  ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: "k kh ng",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 10),
                    Row(
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: "ch chh ",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: "ch chh nh",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 40),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 10),
              FittedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: " ដ​ ឋ​ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: " ឌ​ ឍ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                              TextSpan(
                                text: " ណ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Colors.blue,
                            size: 30,
                          ),
                          onPressed: () {
                            print("Play audio");
                          },
                        ),
                      ],
                    ),

                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RichText(
                          text: const TextSpan(
                            children: [
                              TextSpan(
                                text: " ត ​ថ ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFF790303),
                                ),
                              ),
                              TextSpan(
                                text: " ទ ​ធ ​ន ",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xFFBA0303),
                                ),
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          icon: const Icon(
                            Icons.volume_up,
                            color: Colors.blue,
                            size: 30,
                          ),
                          onPressed: () {
                            print("Play audio");
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " d th ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                            TextSpan(
                              text: " d th ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                            TextSpan(
                              text: " n ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFBA0303),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " t th ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                            TextSpan(
                              text: " t th n ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFBA0303),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " ប ​ផ​ ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                            TextSpan(
                              text: " ព ​ភ ​ម ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFBA0303),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.volume_up,
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: () {
                          print("Play audio");
                        },
                      ),
                    ],
                  ),

                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " យ ​រ ​ល ​វ ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFBA0303),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.volume_up,
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: () {
                          print("Play audio");
                        },
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " b ph ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                            TextSpan(
                              text: " p ph m ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " y r l v ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFFBA0303),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 40),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " ស ​ហ ​ឡ ​អ​ ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                          ],
                        ),
                      ),
                      IconButton(
                        icon: const Icon(
                          Icons.volume_up,
                          color: Colors.blue,
                          size: 30,
                        ),
                        onPressed: () {
                          print("Play audio");
                        },
                      ),
                    ],
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: " s h l a ",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color(0xFF790303),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                ],
              ),

              //Row 2
            ],
          ),
        ),
      ),
    );
  }
}
