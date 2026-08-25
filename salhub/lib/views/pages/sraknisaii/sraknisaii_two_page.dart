import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class SraknisaiiTwoPage extends StatefulWidget {
  const SraknisaiiTwoPage({super.key});

  @override
  State<SraknisaiiTwoPage> createState() => _SraknisaiiTwoPageState();
}

class _SraknisaiiTwoPageState extends State<SraknisaiiTwoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text(
          "រៀនស្រៈនិស្ស័យ",
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
                "ស្រៈនិស្ស័យផ្លូវការចំនួន ២៣ តួ  ដូចជា៖",
                style: TextStyle(fontSize: 25, color: Color(0xFF790303)),
              ),
              const SizedBox(height: 15),

              //Row 1
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
                              text: " ា ិ ី ឹ​ ឺ ុ ូ ួ ",
                              style: TextStyle(
                                fontSize: 30,
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
                              text: " a e ei oe eu o au uo ",
                              style: TextStyle(
                                fontSize: 30,
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

              const SizedBox(height: 10),
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
                              text: " ើ​ ឿ  ៀ េ ែ ៃ​ ោ",
                              style: TextStyle(
                                fontSize: 30,
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
                              text: " ae ue ue ie e e ai ao ",
                              style: TextStyle(
                                fontSize: 30,
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

              const SizedBox(height: 10),
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
                              text: " ៅ ំុំ  ំ ាំ ះ ុះ ",
                              style: TextStyle(
                                fontSize: 30,
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
                              text: " aw aum am am aah oh ",
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

              const SizedBox(height: 10),
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
                              text: " េះ  ោះ ",
                              style: TextStyle(
                                fontSize: 30,
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
                              text: " eh aoh ",
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
            ],
          ),
        ),
      ),
    );
  }
}
