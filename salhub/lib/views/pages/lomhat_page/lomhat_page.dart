import 'package:flutter/material.dart';
import 'package:salhub/views/widgets/back_button_widget.dart';

class LomhatPage extends StatelessWidget {
  const LomhatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leadingWidth: 100, leading: BackButtonWidget()),
    );
  }
}
