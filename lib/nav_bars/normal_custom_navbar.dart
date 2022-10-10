import 'package:custom_nav_bar/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

AppMainWidget appMainWidget = AppMainWidget();

class NormalCustomNavBar extends StatefulWidget {
  const NormalCustomNavBar({super.key, required this.color});
  final Color color;

  @override
  State<NormalCustomNavBar> createState() => _NormalCustomNavBarState();
}

class _NormalCustomNavBarState extends State<NormalCustomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height / 9,
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          Container(
            decoration: BoxDecoration(
                color: widget.color, borderRadius: BorderRadius.circular(20)),
            height: size.height / 12.5,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                /// Home Icon
                InkWell(
                  onTap: () {
                    print('Home selected');

                    AppMainWidget.indexNotifier.value = 0;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.home,
                        color: AppMainWidget.indexNotifier.value == 0
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          color: AppMainWidget.indexNotifier.value == 0
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Utility Icon
                InkWell(
                  onTap: () {
                    print('Utility selected');
                    AppMainWidget.indexNotifier.value = 1;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.arrow_right_arrow_left,
                        color: AppMainWidget.indexNotifier.value == 1
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Utility',
                        style: TextStyle(
                          color: AppMainWidget.indexNotifier.value == 1
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Wallet Icon
                InkWell(
                  onTap: () {
                    print('Wallet selected');
                    AppMainWidget.indexNotifier.value = 2;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.account_balance_wallet,
                        color: AppMainWidget.indexNotifier.value == 2
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: AppMainWidget.indexNotifier.value == 2
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Budget Icon
                InkWell(
                  onTap: () {
                    print('Budget selected');
                    AppMainWidget.indexNotifier.value = 3;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        CupertinoIcons.chart_pie,
                        color: AppMainWidget.indexNotifier.value == 3
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Budget',
                        style: TextStyle(
                          color: AppMainWidget.indexNotifier.value == 3
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),

                /// Settings Icon
                InkWell(
                  onTap: () {
                    print('Settings selected');
                    AppMainWidget.indexNotifier.value = 4;
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.settings_outlined,
                        color: AppMainWidget.indexNotifier.value == 4
                            ? Colors.amber
                            : Colors.white,
                        size: size.width / 20,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          color: AppMainWidget.indexNotifier.value == 4
                              ? Colors.amber
                              : Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
