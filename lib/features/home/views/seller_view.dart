import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/home/views/desktop/seller_desktop_view.dart';
import 'package:fruit_app/features/home/views/mobile/seller_mobile_view.dart';
import 'package:fruit_app/features/home/views/mobile_landscape/seller_mobile_landscape_view.dart';

class SellerView extends StatelessWidget {
  const SellerView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SellerMobileView(),
      desktop: SellerDesktopView(),
      mobileLandscape: SellerMobileLandscapeView(),
    );
  }
}
