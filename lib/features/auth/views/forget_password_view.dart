import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/responsive_layout.dart';
import 'package:fruit_app/features/auth/views/desktop/forget_password_desktopview.dart';
import 'package:fruit_app/features/auth/views/mobile/forget_password_mobile_view.dart';
import 'package:fruit_app/features/auth/views/tablet/forget_password_tablet_view.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: ForgetPasswordMobileView(),
      desktop: ForgetPasswordDesktopview(),
      taplet: ForgetPasswordTabletView(),
    );
  }
}
