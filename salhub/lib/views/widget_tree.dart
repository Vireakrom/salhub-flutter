import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/pages/about_us/about_us_page.dart';
import 'package:salhub/views/pages/home_page.dart';
import 'package:salhub/views/pages/lomhat_page/lomhat_page.dart';
import 'package:salhub/views/pages/setting/setting_page.dart';
import 'package:salhub/views/widgets/navbar_widget.dart';



List<Widget> pages = [HomePage(), LomhatPage(), AboutUsPage(), SettingPage(), ];

class WidgetTree extends StatelessWidget {
  const WidgetTree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ValueListenableBuilder(
            valueListenable: selectedPageNotifier,
            builder: (context, value, child) {
              return pages.elementAt(value);
            },
          ),
          const Align(alignment: Alignment.bottomCenter, child: NavbarWidget()),
        ],
      ),
    );
  }
}
