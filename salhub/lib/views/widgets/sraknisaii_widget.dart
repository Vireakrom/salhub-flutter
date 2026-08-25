import 'package:flutter/material.dart';

class SrakNisaiiWidget extends StatelessWidget {
  const SrakNisaiiWidget({
    super.key,
    required this.title,
    required this.nextPage,
    required this.engTitle,
  });

  final String title;
  final String engTitle;
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                textAlign: .center,
                title,
                style: TextStyle(fontSize: 24, color: Color(0xFF6D3F21)),
              ),
              FittedBox(
                child: Text(
                  textAlign: .center,
                  engTitle,
                  style: TextStyle(fontSize: 24, color: Color(0xFF6D3F21)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
