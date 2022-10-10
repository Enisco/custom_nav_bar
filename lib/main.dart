import 'package:custom_nav_bar/constants.dart';
import 'package:custom_nav_bar/demo_pages/demo_pages.dart';
import 'package:custom_nav_bar/nav_bars/curved_custom_navbar.dart';
import 'package:custom_nav_bar/nav_bars/normal_custom_navbar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Custom Nab Bar',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: AppMainWidget(),
  ));
}

class AppMainWidget extends StatelessWidget {
  AppMainWidget({super.key});

  static final ValueNotifier<int> indexNotifier = ValueNotifier<int>(2);

  final String title = 'Custom Nav Bar';

  static int pageIndex = 0;

  List appScreens = [
    const HomePage(),
    const UtilityPage(),
    const WalletPage(),
    const BudgetPage(),
    const SettingsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: AppMainWidget.indexNotifier,
      builder: (_, tasks, __) {
        return Scaffold(
          body: (appScreens[AppMainWidget.indexNotifier.value]),
          bottomNavigationBar: AnimatedSwitcher(
            duration: const Duration(milliseconds: 300),
            child: AppMainWidget.indexNotifier.value == 2
                ? CurvedCustomNavBar(
                    color: kPrimaryColor,
                  )
                : NormalCustomNavBar(
                    color: kPrimaryColor,
                  ),
          ),
        );
      },
    );
  }
}
