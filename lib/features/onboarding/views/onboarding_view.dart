import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/sign_up_view.dart';
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
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefAuthPadding),
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
                      MaterialPageRoute(builder: (context) => SignUpView()),
                    );
                  },
                  child: const Text(
                    'Skip',
                    style: TextStyle(fontSize: 16, color: kBorderColor),
                  ),
                ),
              ),

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.5,
                child: PageView(
                  controller: pageController,
                  onPageChanged: (index) {
                    setState(() {
                      isLastPage = index == 2;
                    });
                  },
                  children: [
                    CustomPageBuilder(
                      title: 'E Shopping',
                      subTitle: 'Explore op organic fruits & grab them',
                    ),
                    CustomPageBuilder(
                      title: 'Delivery Arrived',
                      subTitle: 'Order is arrived at your Place',
                    ),
                    CustomPageBuilder(
                      title: 'Delivery Arrived',
                      subTitle: 'Order is arrived at your Place',
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
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                    dotBorder: DotBorder(
                      color: kActiveDotBorderColor,
                      width: 1.5,
                    ),
                  ),
                  dotDecoration: DotDecoration(
                    width: 14,
                    height: 14,
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                    dotBorder: DotBorder(color: kPrimaryColor, width: 1.5),
                  ),
                  spacing: 10.0,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              isLastPage
                  ? Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                          ),
                          onPressed: () async {
                            final prefs = await SharedPreferences.getInstance();
                            prefs.setBool('showHome', true);
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpView(),
                              ),
                            );
                          },
                          child: Text(
                            'Get Started',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  : SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: kPrimaryColor,
                        ),
                        onPressed: () {
                          pageController.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        },
                        child: const Text(
                          'Next',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
