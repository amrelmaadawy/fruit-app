import 'package:flutter/material.dart';

import 'package:fruit_app/core/responsive/responsive_layout.dart';

import 'package:fruit_app/features/auth/views/desktop/sign_up_desktop_view.dart';
import 'package:fruit_app/features/auth/views/mobile/sign_up_mobile_view.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: SignUpMobileView(),
      desktop: SignUpDesktopView(),
      taplet: SignUpDesktopView(),
    );
  }
}
