import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/home/views/desktop/home_desktop_view.dart';
import 'package:fruit_app/features/home/views/mobile/home_mobile_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: HomeMobileView(),
      desktop: HomeDesktopView(),
    );
  }
}
