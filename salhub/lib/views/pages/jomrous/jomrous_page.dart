import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class JomrousPage extends StatelessWidget {
  const JomrousPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leadingWidth: 100,
        leading: BackButtonWidget(),
        title: Text("ភាសារចម្រុះ"),
        centerTitle: true,
      ),
      body: Column(children: [Text("Hello")]),
    );
  }
}
