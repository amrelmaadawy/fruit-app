import 'package:flutter/material.dart';
import 'responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.taplet,
    required this.desktop,
    this.mobileLandscape,
    this.tapletLandscape,
    this.desktopLandscape,
  });

  final Widget mobile;
  final Widget taplet;
  final Widget desktop;
  final Widget? mobileLandscape;
  final Widget? tapletLandscape;
  final Widget? desktopLandscape;

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.of(context).orientation;

    if (Responsive.isDesktop(context)) {
      return orientation == Orientation.landscape
          ? (desktopLandscape ?? desktop)
          : desktop;
    } else if (Responsive.isTablet(context)) {
      return orientation == Orientation.landscape
          ? (tapletLandscape ?? taplet)
          : taplet;
    } else {
      return orientation == Orientation.landscape
          ? (mobileLandscape ?? mobile)
          : mobile;
    }
  }
}
