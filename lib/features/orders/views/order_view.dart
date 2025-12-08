import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';

import 'package:fruit_app/features/orders/views/desktop/order_desktop_view.dart';
import 'package:fruit_app/features/orders/views/mobile/orders_mobile_view.dart';

class OrderView extends StatelessWidget {
  const OrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OrdersMobileView(),
      desktop: OrdersDesktopView(),
      // mobileLandscape: OrderMobileLandscapeView(),
    );
  }
}
