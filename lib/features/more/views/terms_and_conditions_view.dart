import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/more/views/mobile/terms_and_conditions_view.dart';
import 'package:fruit_app/features/more/views/mobile_landscape/terms_and_conditions_mobile_landscapeview.dart';

class TermsAndConditionsView extends StatelessWidget {
  const TermsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: TermsAndConditionsMobileView(),
      desktop: Container(),
      mobileLandscape: TermsAndConditionsMobileLandscapeView(),
    );
  }
}
