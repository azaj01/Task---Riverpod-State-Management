import 'package:flutter/material.dart';
import 'package:task_list_app/common/app_style.dart';
import 'package:task_list_app/pages/layout/responsive_ui.dart';
import 'package:task_list_app/pages/tasks/_view/tasks_page.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar(
      {Key? key, required this.navIndex, required this.changeNavIndex})
      : super(key: key);
  final int navIndex;
  final Function(int) changeNavIndex;

  @override
  Widget build(BuildContext context) {
    return NavigationRail(
      selectedLabelTextStyle: TextStyle(color: AppStyle.lightTextColor),
      selectedIconTheme: IconThemeData(color: AppStyle.lightTextColor),
      unselectedLabelTextStyle: TextStyle(color: Colors.grey),
      extended: ResponsiveUI.isLargeScreen(context) ? true : false,
      selectedIndex: navIndex,
      onDestinationSelected: changeNavIndex,
      labelType: NavigationRailLabelType.none,
      backgroundColor: AppStyle.darkBlue,
      destinations: <NavigationRailDestination>[
        // navigation destinations
        ...List.generate(
          navigationBarItems.length,
          (index) => NavigationRailDestination(
            icon: Icon(
              navigationBarItems[index].icons,
              color: AppStyle.lightTextColor,
            ),

            label: Text('${navigationBarItems[index].name}'),
          ),
        ),
      ],
    );
  }
}

final navigationBarItems = [
  // TODO: labels should be in app localization file
  NavigationBarItem(name: 'Tasks', url: TasksPage(), icons: Icons.task),

  NavigationBarItem(
      name: 'Projects', url: Text('projects'), icons: Icons.dashboard),
  NavigationBarItem(name: 'Teams', url: Text('teams'), icons: Icons.people),
];

class NavigationBarItem {
  final String name;
  final Widget url;
  final IconData icons;

  NavigationBarItem({
    required this.name,
    required this.url,
    required this.icons,
  });
}
