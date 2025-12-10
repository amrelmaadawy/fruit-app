import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/more/views/mobile/support_mobile_view.dart';
import 'package:fruit_app/features/more/views/mobile_landscape/support_mobile_landscape.dart';

class SupportView extends StatelessWidget {
  const SupportView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: SupportMobileView(), desktop: Container(),mobileLandscape:SupportMobileLandscape() ,);
  }
}