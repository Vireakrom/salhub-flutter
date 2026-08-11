import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class LeftMessageWidget extends StatefulWidget {
  const LeftMessageWidget({
    super.key,
    required this.khmerText,
    required this.englishText,
    required this.audioPath,
  });
  final String khmerText;
  final String englishText;
  final String audioPath;

  @override
  State<LeftMessageWidget> createState() => _LeftMessageWidgetState();
}

class _LeftMessageWidgetState extends State<LeftMessageWidget> {
  final audioPlayer = AudioPlayer();
  Future<void> playSound() async {
    String audioPath = widget.audioPath;
    await audioPlayer.play(AssetSource(audioPath));
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft, // Forces the container to the left
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/images/left_message.png'),
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
                  mainAxisAlignment: MainAxisAlignment.center,
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
          GestureDetector(
            onTap: () {
              playSound();
            },
            child: Icon(Icons.volume_up, color: Colors.blue, size: 30.0),
          ),
        ],
      ),
    );
  }
}
