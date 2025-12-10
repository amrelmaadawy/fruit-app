import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/more/views/mobile/profile_mobile_view.dart';
import 'package:fruit_app/features/more/views/mobile_landscape/profile_mobile_landscape_view.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout
    (mobile: ProfileMobileView(), desktop: Container(),
    mobileLandscape: ProfileMobileLandscapeView(),
      
    );
  }
}