import 'package:flutter/material.dart';
import 'package:task_list_app/pages/app_navigation_bar.dart';

// This class does not have to be used. It should be replaced with class
// handling navigation using Beamer package
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: <Widget>[
          // create a navigation rail
          AppNavigationBar(
            navIndex: _selectedIndex,
            changeNavIndex: (int index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),

          const VerticalDivider(thickness: 1, width: 2),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _selectedIndex == 0
                    ? navigationBarItems[0].url
                    : _selectedIndex == 1
                        ? navigationBarItems[1].url
                        : _selectedIndex == 2
                            ? navigationBarItems[2].url
                            : navigationBarItems[0].url,
              ],
            ),
          )
        ],
      ),
    );
  }
}
