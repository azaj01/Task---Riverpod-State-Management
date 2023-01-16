import 'package:flutter/material.dart';
import 'package:task_list_app/pages/layout/responsive_ui.dart';

class DescriptionPage extends StatelessWidget {
  const DescriptionPage({super.key, required this.descriptionText});
  final String descriptionText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Description'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22),
        child: Text(
          descriptionText,
          style: TextStyle(
              fontSize: ResponsiveUI.isLargeScreen(context) ? 28 : 18),
        ),
      ),
    );
  }
}
