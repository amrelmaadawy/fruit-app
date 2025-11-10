import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/onboarding/views/desktop/onboarding_desktop_view.dart';
import 'package:fruit_app/features/onboarding/views/mobile/onboarding_mobile_view.dart';
import 'package:fruit_app/features/onboarding/views/tablet/onboarding_tablet_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OnboardingMobileView(),
      desktop: OnboardingDesktopView(),
      taplet: OnboardingTabletView(),
    );
  }
}
