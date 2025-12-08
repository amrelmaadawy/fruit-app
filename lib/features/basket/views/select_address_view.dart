import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/select_address_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile_landscape/select_address_mobile_landscape_view.dart';

class SelectAddressView extends StatelessWidget {
  const SelectAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SelectAddressMobileView(),
      desktop: Container(),
      mobileLandscape: SelectAddressMobileLandscapeView(),
    );
  }
}
