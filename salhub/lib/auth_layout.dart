import 'package:flutter/material.dart';
import 'package:salhub/data/notfiers.dart';
import 'package:salhub/views/admin_widget_tree.dart';
import 'package:salhub/views/pages/auth/app_loading_page.dart';
import 'package:salhub/views/pages/welcome_page.dart';
import 'package:salhub/views/widget_tree.dart';

class AuthLayout extends StatelessWidget {
  const AuthLayout({super.key, this.pageIfNotConnected});

  final Widget? pageIfNotConnected;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: authService,
      builder: (context, authService, child) {
        return StreamBuilder(
          stream: authService.authStateChanges,
          builder: (context, snapshot) {
            Widget widget;
            if (snapshot.connectionState == ConnectionState.waiting) {
              widget = const AppLoadingPage();
            } else if (snapshot.hasData) {
              return FutureBuilder<bool>(
                future: authService.isAdmin(),
                builder: (context, adminSnapshot) {
                  if (adminSnapshot.connectionState ==
                      ConnectionState.waiting) {
                    return const AppLoadingPage();
                  }
                  if (adminSnapshot.data == true) {
                    return const AdminWidgetTree();
                  } else {
                    return const WidgetTree();
                  }
                },
              );
            } else {
              widget = pageIfNotConnected ?? WelcomePage();
            }
            return widget;
          },
        );
      },
    );
  }
}
