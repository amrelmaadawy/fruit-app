import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/views/mobile/checkout_confirmed_mobile_view.dart';
import 'package:fruit_app/features/basket/views/mobile/widgets/custom_page_indicator.dart';
import 'package:fruit_app/features/basket/views/payment_view.dart';
import 'package:fruit_app/features/basket/views/select_address_view.dart';
import 'package:fruit_app/features/basket/views/select_data_view.dart';

class CheckoutMobileLandscapeView extends StatefulWidget {
  const CheckoutMobileLandscapeView({super.key});

  @override
  State<CheckoutMobileLandscapeView> createState() =>
      _CheckoutMobileLandscapeViewState();
}

class _CheckoutMobileLandscapeViewState
    extends State<CheckoutMobileLandscapeView> {
  PageController pageController = PageController(initialPage: 0);
  int currentPage = 0;
  bool isLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 2.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
              child: Column(
                children: [
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
                  SizedBox(
                    height: 10.h,
                    child: CustomElevatedButton(
                      onPressed: () {
                        if (isLastPage) {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const CheckoutConfirmedMobileView(),
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
                    SelectDateView(),
                    SelectAddressView(),
                    PaymentView(),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
