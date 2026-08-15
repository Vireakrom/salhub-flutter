import 'package:flutter/material.dart';

class GrammarCardWidget extends StatelessWidget {
  const GrammarCardWidget({
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
          border: Border.all(color: Color(0xFFB342FF), width: 2),
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
                    colors: [Color(0xFFE6B8FE), Color(0xFFF8E2FF)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
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
