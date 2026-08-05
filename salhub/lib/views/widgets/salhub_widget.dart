import 'package:flutter/material.dart';

class SalhubWidget extends StatelessWidget {
  const SalhubWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "S",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFF6A8926),
          ),
        ),
        SizedBox(width: 14),
        Text(
          "A",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF7A22A),
          ),
        ),
        SizedBox(width: 14),
        ShaderMask(
          shaderCallback: (bounds) => LinearGradient(
            colors: [Color(0xFF0097B5), Color(0xFFFFFFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ).createShader(bounds),
          child: Text(
            "L",
            style: TextStyle(
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SizedBox(width: 14),
        Text(
          "H",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3F2514),
          ),
        ),
        SizedBox(width: 14),
        Text(
          "u",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3F2514),
          ),
        ),
        SizedBox(width: 14),
        Text(
          "b",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: Color(0xFF3F2514),
          ),
        ),
      ],
    );
  }
}
