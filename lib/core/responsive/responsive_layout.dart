import 'package:flutter/material.dart';
import 'responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
    this.mobileLandscape,
    this.desktopLandscape,
  });

  final Widget mobile;
  final Widget desktop;
  final Widget? mobileLandscape;
  final Widget? desktopLandscape;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (Responsive.isWeb(context)) {
      return orientation == Orientation.landscape
          ? (desktopLandscape ?? desktop)
          : desktop;
    } 
     else {
      return orientation == Orientation.landscape
          ? (mobileLandscape ?? mobile)
          : mobile;
    }
  }
}
