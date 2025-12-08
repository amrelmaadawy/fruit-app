import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/orders/views/desktop/order_tracking_desktop_view.dart';
import 'package:fruit_app/features/orders/views/mobile/order_tracking_mobile_view.dart';
import 'package:fruit_app/features/orders/views/mobile_landscape/order_tracking_mobile_landscape_view.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: OrderTrackingMobileView(),
      desktop: OrderTrackingDesktopView(),
      mobileLandscape: OrderTrackingMobileLandscapeView(),
    );
  }
}