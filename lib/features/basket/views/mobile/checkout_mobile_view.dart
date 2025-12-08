import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/views/mobile/checkout_confirmed_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/custom_page_indicator.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/payment_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/select_address_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/select_date_mobile_view.dart';

class CheckoutMobileView extends StatefulWidget {
  const CheckoutMobileView({super.key});

  @override
  State<CheckoutMobileView> createState() => _CheckoutMobileViewState();
}

class _CheckoutMobileViewState extends State<CheckoutMobileView> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0; // ✅ استخدام متغير بدلاً من pageController.page
  bool isLastPage = false;

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefHomePadding),
          child: Column(
            children: [
              // ✅ Page Indicator خارج الـ PageView
              OrderPageIndicator(
                currentStep: currentPage,
                onStepTap: (index) {
                  pageController.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                },
              ),
              
              const SizedBox(height: 16),
              
              Expanded(
                flex: 7,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value; // ✅ تحديث المتغير
                      isLastPage = value == 2;
                    });
                  },
                  controller: pageController,
                  children: const [
                    SelectDateMobileView(),
                    SelectAddressMobileView(),
                    PaymentMobileView(),
                  ],
                ),
              ),
              
              const SizedBox(height: 16),
              
              SizedBox(
                height: 6.h,
                child: CustomElevatedButton(
                  onPressed: () {
                    if (isLastPage) {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CheckoutConfirmedMobileView(),
                        ),
                      );
                    } else {
                      pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    }
                  },
                  text: isLastPage ? 'Place Order' : 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}