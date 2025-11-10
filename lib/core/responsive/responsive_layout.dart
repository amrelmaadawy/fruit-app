import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive.dart';

class ResponsiveLayout extends StatelessWidget {
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.desktop,
    required this.taplet,
  });
  final Widget mobile;
  final Widget desktop;
  final Widget taplet;
  @override
  Widget build(BuildContext context) {
    if (Responsive.isDesktop(context)) return desktop;
    if (Responsive.isTablet(context)) return taplet;
    return mobile;
  }
}
