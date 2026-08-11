import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class RightMessageWidget extends StatefulWidget {
  const RightMessageWidget({
    super.key,
    required this.khmerText,
    required this.englishText,
    required this.audioPath,
  });
  final String khmerText;
  final String englishText;
  final String audioPath;

  @override
  State<RightMessageWidget> createState() => _RightMessageWidgetState();
}

class _RightMessageWidgetState extends State<RightMessageWidget> {
  final audioPlayer = AudioPlayer();
  Future<void> playSound() async {
    String audioPath = widget.audioPath;
    await audioPlayer.play(AssetSource(audioPath));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: [
          GestureDetector(
            onTap: () {
              playSound();
            },
            child: Transform.flip(
              flipX: true,
              child: Icon(Icons.volume_up, color: Colors.blue, size: 30.0),
            ),
          ),

          SizedBox(width: 10),
          Flexible(
            child: ShaderMask(
              shaderCallback: (bounds) => LinearGradient(
                colors: [Color(0xFFFF8373), Color(0xFFFFE8F2)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ).createShader(bounds),
              child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Color(0xFFBA0303)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      widget.khmerText,
                      style: TextStyle(fontSize: 20, color: Color(0xFF6D3F21)),
                    ),
                    Text(
                      widget.englishText,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF6D3F21),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Image.asset('assets/images/right_message.png'),
        ],
      ),
    );
  }
}
