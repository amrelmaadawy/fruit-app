import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/views/mobile/checkout_confirmed_mobile_view.dart';
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
  bool isLastPage = false;
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
              SizedBox(height: MediaQuery.of(context).size.height * 0.1),
              Expanded(
                flex: 7,
                child: PageView(
                  onPageChanged: (value) {
                    setState(() {
                      isLastPage = value == 2;
                    });
                  },
                  controller: pageController,
                  children: [
                    SelectDateMobileView(),
                    SelectAddressMobileView(),
                    PaymentMobileView(),
                  ],
                ),
              ),
              isLastPage
                  ? SizedBox(
                      height: 6.h,
                      child: CustomElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CheckoutConfirmedMobileView(),
                            ),
                          );
                        },
                        text: 'Place Order',
                      ),
                    )
                  : SizedBox(
                      height: 6.h,
                      child: CustomElevatedButton(
                        onPressed: () {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 500),
                            curve: Curves.bounceInOut,
                          );
                        },
                        text: 'Continue',
                      ),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
