import 'package:flutter/material.dart';

class LomhatListTileWidget extends StatelessWidget {
  const LomhatListTileWidget({
    super.key,
    required this.color1,
    required this.color2,
    required this.engTxt,
    required this.khTxt,
    required this.nextPage,
  });
  final Color color1;
  final Color color2;
  final String khTxt;
  final String engTxt;
  final Widget nextPage;

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
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => nextPage),
          );
        },
        tileColor: Colors.transparent,
        title: Text(khTxt, style: TextStyle(fontSize: 20, color: Colors.black)),
        subtitle: Text(
          engTxt,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.black),
      ),
    );
  }
}
