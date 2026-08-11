import 'package:flutter/material.dart';

class LomhatListTileWidget extends StatelessWidget {
  const LomhatListTileWidget({
    super.key,
    required this.color1,
    required this.color2,
    required this.engTxt,
    required this.khTxt,
  });
  final Color color1;
  final Color color2;
  final String khTxt;
  final String engTxt;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ListTile(
        tileColor: Colors.transparent,
        title: Text('កម្រិត​ ១'),
        subtitle: Text('Level 1'),
        trailing: Icon(Icons.favorite_rounded),
      ),
    );
  }
}
