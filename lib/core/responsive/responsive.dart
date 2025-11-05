import 'package:flutter/material.dart';

class ResponsiveWidget extends StatelessWidget {
  const ResponsiveWidget({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.web,
  });
  final Widget mobile;
  final Widget tablet;
  final Widget web;
  @override
  Widget build(BuildContext context) {
    return Responsive.isWebScreen(context)
        ? web
        : Responsive.isTabletScreen(context)
        ? tablet
        : mobile;
  }
}

class Responsive {
  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 600;
  }

  static bool isTabletScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 600 &&
        MediaQuery.of(context).size.width < 1200;
  }

  static bool isWebScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 1200;
  }
}
