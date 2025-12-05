import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/onboarding/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeInAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..forward();

    _fadeInAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context, _createRoute());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Route _createRoute() {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) =>
          const OnboardingView(),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(1.0, 0.0);
        const end = Offset.zero;

        return FadeTransition(
          opacity: animation,
          child: SlideTransition(
            position: animation.drive(Tween(begin: begin, end: end)),
            child: child,
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSplashBackGroundColor,
      body: SafeArea(
        child: OrientationBuilder(
          builder: (context, orientation) {
            bool isPortrait = orientation == Orientation.portrait;

            return LayoutBuilder(
              builder: (context, constraints) {
                bool isWeb = constraints.maxWidth > 600;

                double logoSize = isWeb
                    ? 200
                    : isPortrait
                        ? 90.w
                        : 60.h; // في landscape خليها أقل

                double bottomImageHeight = isWeb
                    ? 250
                    : isPortrait
                        ? 100.h
                        : 60.h; // تصغير الصورة تحت في Landscape

                return Center(
                  child: Column(
                    children: [
                      SizedBox(height: isWeb ? 40 : isPortrait ? 20.h : 10.h),
                  
                      /// ----------------- Logo -----------------
                      FadeTransition(
                        opacity: _fadeInAnimation,
                        child: Image.asset(
                          'assets/images/fruit_market.png',
                          width: logoSize,
                          height: logoSize,
                          fit: BoxFit.contain,
                        ),
                      ),
                  
                      const Spacer(),
                  
                      FadeTransition(
                        opacity: _fadeInAnimation,
                        child: SizedBox(
                          height: bottomImageHeight,
                          child: Image.asset(
                            'assets/images/343434 1.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                  
                      SizedBox(height: isWeb ? 40 : isPortrait ? 10.h : 10.h),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
