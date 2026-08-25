import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class SraknisaiiThreePage extends StatefulWidget {
  const SraknisaiiThreePage({super.key});

  @override
  State<SraknisaiiThreePage> createState() => _SraknisaiiThreePageState();
}

class _SraknisaiiThreePageState extends State<SraknisaiiThreePage> {
  final audioPlayer = AudioPlayer();
  Future<void> playSound(String audioPath) async {
    await audioPlayer.play(AssetSource(audioPath));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text(
          "រៀនស្រៈពេញតួ",
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
                "ស្រៈពេញតួមាន ១៥ តួ គឺ",
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
                              text: " អ អា ឥ ឦ ឧ ",
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
                          playSound("audio/rr.mp3");
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
                              text: " a a i i u ",
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
                              text: " ឩ ឪ ឫ ឬ ឭ ",
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
                          playSound("audio/ou.mp3");
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
                              text: " uu au ry ryy ly ",
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
                              text: " ឮ ឯ ឰ ឱ ឳ ",
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
                          playSound("audio/lue.mp3");
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
                              text: " lyy e ai ao au ",
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
