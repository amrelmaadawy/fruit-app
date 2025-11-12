import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/basket/views/desktop/basket_desktop_view.dart';
import 'package:fruit_app/features/basket/views/mobile/basket_mobile_view.dart';
import 'package:fruit_app/features/basket/views/tablet/basket_tablet_view.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: BasketMobileView(),
      desktop: BasketDesktopView(),
      taplet: BasketTabletView(),
    );
  }
}
