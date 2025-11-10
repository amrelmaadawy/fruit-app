import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/auth/views/desktop/receive_otp_desktop_view.dart';
import 'package:fruit_app/features/auth/views/mobile/receive_otp_mobile_view.dart';
import 'package:fruit_app/features/auth/views/tablet/receive_otp_tablet_view.dart';

class ReceiveOtpView extends StatelessWidget {
  const ReceiveOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: RecevieOtpMobileView(),
      desktop: ReceiveOtpDesktopView(),
      taplet: ReceiveOtpTabletView(),
    );
  }
}
