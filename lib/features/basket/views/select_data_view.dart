import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/select_date_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile_landscape/select_date_mobile_landscape_view.dart';

class SelectDateView extends StatelessWidget {
  const SelectDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SelectDateMobileView(),
      desktop: Container(),
      mobileLandscape: SelectDateMobileLandscapeView(),
    );
  }
}
