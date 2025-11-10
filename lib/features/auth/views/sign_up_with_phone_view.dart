import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/auth/views/desktop/sign_up_with_phone_desktop_view.dart';
import 'package:fruit_app/features/auth/views/mobile/sign_up_with_phone_mobile_view.dart';
import 'package:fruit_app/features/auth/views/tablet/sign_up_with_phone_tablet_view.dart';

class SignUpWithPhoneView extends StatelessWidget {
  const SignUpWithPhoneView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SignUpWithPhoneMobileView(),
      desktop: SignUpWithPhoneDesktopView(),
      taplet: SignUpWithPhoneTabletView(),
    );
  }
}
