import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSplashBackGroundColor,
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.3),
          Image.asset('assets/images/fruit_market.png'),
          Spacer(),
          Image.asset('assets/images/343434 1.png'),
        ],
      ),
    );
  }
}
