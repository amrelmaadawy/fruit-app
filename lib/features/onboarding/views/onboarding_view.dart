import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/sign_up_mobile_view.dart';
import 'package:fruit_app/features/onboarding/views/widgets/custom_page_builder.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  PageController pageController = PageController();
  bool isLastPage = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isPortrait = orientation == Orientation.portrait;

        return LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;

            bool isTablet = width >= 600 && width < 1024;
            bool isWeb = width >= 1024;

            double buttonWidth = isWeb
                ? width * 0.25
                : isTablet
                    ? width * 0.35
                    : width * 0.6;

            double topPadding = isPortrait ? 20 : 10;

            return Scaffold(
              body: SafeArea(
                child: Padding(
                  padding: EdgeInsets.all(isPortrait ? kDefAuthPadding : 12),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: TextButton(
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('showHome', true);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpView()),
                            );
                          },
                          child: const Text(
                            'Skip',
                            style: TextStyle(fontSize: 16, color: kBorderColor),
                          ),
                        ),
                      ),

                      SizedBox(height: topPadding),

                      /// **Content**
                      Expanded(
                        child: PageView(
                          controller: pageController,
                          onPageChanged: (index) {
                            setState(() => isLastPage = index == 2);
                          },
                          children: const [
                            CustomPageBuilder(
                              title: 'E Shopping',
                              subTitle: 'Explore organic fruits & grab them',
                            ),
                            CustomPageBuilder(
                              title: 'Delivery Arrived',
                              subTitle: 'Order has arrived at your place',
                            ),
                            CustomPageBuilder(
                              title: 'Quick Delivery',
                              subTitle: 'Fast and safe delivery to your doorstep',
                            ),
                          ],
                        ),
                      ),

                      SmoothPageIndicator(
                        controller: pageController,
                        count: 3,
                        effect: CustomizableEffect(
                          activeDotDecoration: DotDecoration(
                            width: 14,
                            height: 14,
                            color: kPrimaryColor,
                            borderRadius:
                                BorderRadius.circular(kDefBorderRaduis),
                            dotBorder: DotBorder(
                              color: kActiveDotBorderColor,
                              width: 1.5,
                            ),
                          ),
                          dotDecoration: DotDecoration(
                            width: 14,
                            height: 14,
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.circular(kDefBorderRaduis),
                            dotBorder:
                                DotBorder(color: kPrimaryColor, width: 1.5),
                          ),
                          spacing: 10.0,
                        ),
                      ),

                      const SizedBox(height: 20),

                      /// **Button**
                      SizedBox(
                        width: buttonWidth,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                          ),
                          onPressed: () {
                            if (isLastPage) {
                              SharedPreferences.getInstance().then((prefs) =>
                                  prefs.setBool('showHome', true));
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpView()),
                              );
                            } else {
                              pageController.nextPage(
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeInOut,
                              );
                            }
                          },
                          child: Text(
                            isLastPage ? 'Get Started' : 'Next',
                            style: const TextStyle(
                                color: Colors.white, fontSize: 16),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
