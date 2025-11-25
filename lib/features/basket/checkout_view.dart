import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/basket/views/desktop/checkout_desktop_view.dart';
import 'package:fruit_app/features/basket/views/mobile/checkout_mobile_view.dart';
import 'package:fruit_app/features/basket/views/tablet/checkout_tablet_view.dart';

class CheckoutView extends StatelessWidget {
  const CheckoutView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: CheckoutMobileView(),
      taplet: CheckoutTabletView(),
      desktop: CheckoutDesktopView(),
    );
  }
}
