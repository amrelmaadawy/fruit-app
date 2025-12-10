import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/more/views/mobile/more_mobile_view.dart';
import 'package:fruit_app/features/more/views/mobile_landscape/more_mobile_landscape_view.dart';

class MoreView extends StatelessWidget {
  const MoreView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: MoreMobileView(),
      desktop: Container(),
      mobileLandscape: MoreMobileLandscapeView(),
    );
  }
}
