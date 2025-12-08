import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/payment_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile_landscape/payment_mobile_landscape_view.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(mobile: PaymentMobileView(), desktop: Container(),mobileLandscape: PaymentMobileLandscapeView(),);
  }
}