import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/pages/about_us/admin_contents_page.dart';
import 'package:salhub/views/pages/about_us/admin_dashboard.dart';
import 'package:salhub/views/pages/admin/admin_page.dart';
import 'package:salhub/views/pages/setting/setting_page.dart';
import 'package:salhub/views/widgets/admin_navbar_widget.dart';

List<Widget> pages = [
  AdminPage(),
  SettingPage(),
  AdminDashboard(),
  AdminContentsPage(),
];

class AdminWidgetTree extends StatelessWidget {
  const AdminWidgetTree({super.key});

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
          const Align(
            alignment: Alignment.bottomCenter,
            child: AdminNavbarWidget(),
          ),
        ],
      ),
    );
  }
}
