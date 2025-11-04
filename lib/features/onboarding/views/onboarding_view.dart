import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
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
    final isDark = Theme.of(context).brightness == Brightness.dark;

    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: [
            // Skip button at top right
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () async {
                  // final prefs = await SharedPreferences.getInstance();
                  // prefs.setBool('showHome', true);
                  // Navigate to home or next screen
                },
                child: const Text('Skip', style: TextStyle(fontSize: 16)),
              ),
            ),

            // PageView content
            Expanded(
              flex: 7,
              child: PageView(
                controller: pageController,
                onPageChanged: (index) {
                  setState(() {
                    isLastPage = index == 2;
                  });
                },
                children: [
                  Center(
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: Image.asset('assets/images/onboarding.png'),
                        ),
                        Text(
                          'E Shopping',
                          style: TextStyle(
                            color: Color(0xff2F2E41),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Explore op organic fruits & grab them',
                          style: TextStyle(
                            color: Color(0xff78787C),
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Center(child: Text('Onboarding 2')),
                  Center(child: Text('Onboarding 3')),
                ],
              ),
            ),

            // Smooth Indicator directly under the PageView
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: WormEffect(
                spacing: 16,
                dotColor: Colors.grey,
                activeDotColor: isDark ? Colors.white : Colors.black,
              ),
              onDotClicked: (index) => pageController.animateToPage(
                index,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
              ),
            ),

            const SizedBox(height: 20),

            isLastPage
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () async {
                          final prefs = await SharedPreferences.getInstance();
                          prefs.setBool('showHome', true);
                        },
                        child: Text(
                          'Get Started',
                          style: TextStyle(
                            color: isDark ? Colors.black : Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                : ElevatedButton(
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
                      style: TextStyle(color: Colors.white),
                    ),
                  ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
