import 'package:flutter/material.dart';

class LevelWidget extends StatelessWidget {
  const LevelWidget({
    super.key,
    required this.title,
    required this.description,
    required this.nextPage,
  });

  final String title;
  final String description;
  final Widget nextPage;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => nextPage),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xFFBA0303), width: 2),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(18),
                child: ShaderMask(
                  blendMode: BlendMode.srcIn,
                  shaderCallback: (bounds) => LinearGradient(
                    colors: [Color(0xFFFF8373), Color(0xFFFFE8F2)],
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
                  Text(
                    title,
                    style: TextStyle(fontSize: 24, color: Color(0xFF6D3F21)),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 16, color: Color(0xFF6D3F21)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
