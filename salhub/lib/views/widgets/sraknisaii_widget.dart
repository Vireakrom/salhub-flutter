import 'package:flutter/material.dart';

class SrakNisaiiWidget extends StatelessWidget {
  const SrakNisaiiWidget({
    super.key,
    required this.title,
    required this.nextPage,
  });

  final String title;
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
          color: Color(0xFFFFF3B1),
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Color(0xFFF7BE2D), width: 2),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,

            children: [
              Text(
                title,
                style: TextStyle(fontSize: 24, color: Color(0xFF6D3F21)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
