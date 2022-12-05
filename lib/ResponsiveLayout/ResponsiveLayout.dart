import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  late Widget mobile;
  late Widget tab;
  late Widget lap;
  ResponsiveLayout({
    required this.lap,
    required this.mobile,
    required this.tab,
  });
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobile;
      } else if (constraints.maxWidth < 900) {
        return tab;
      } else {
        return lap;
      }
    });
  }
}
