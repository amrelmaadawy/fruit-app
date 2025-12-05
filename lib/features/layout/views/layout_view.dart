import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/layout/views/desktop/layout_desktop_view.dart';
import 'package:fruit_app/features/layout/views/mobile/layout_mobile_view.dart';
import 'package:flutter/material.dart';
import 'package:fruit_app/features/layout/views/mobile_landscape/layout_mobile_landscape_view.dart';

class LayoutView extends StatelessWidget {
  const LayoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: LayoutMobileView(),
      desktop: LayoutDesktopView(),
      mobileLandscape: LayoutMobileLandscape(),
    );
  }
}
