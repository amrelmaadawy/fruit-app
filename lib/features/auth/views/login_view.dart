import 'package:flutter/material.dart';

import 'package:fruit_app/core/responsive/responsive_layout.dart';

import 'package:fruit_app/features/auth/views/desktop/login_desktop_view.dart';
import 'package:fruit_app/features/auth/views/mobile/login_mobile_view.dart';
import 'package:fruit_app/features/auth/views/tablet/login_tablet_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: LoginMobileView(),
      desktop: LoginDesktopView(),
      taplet: LoginTabletView(),
    );
  }
}
