import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/views/mobile/checkout_error_mobile_view.dart';

class CheckoutConfirmedMobileView extends StatelessWidget {
  const CheckoutConfirmedMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SizedBox(
          height: 90.h,
          child: Padding(
            padding: const EdgeInsets.all(40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/order confirmed.png'),
                Text(
                  'YOUR ORDER IS CONFIRMED',
                  style: TextStyle(
                    fontSize: 5.5.sp,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1.5.h),

                Text(
                  'Your order code: #243188',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                Text(
                  'Thank you for choosing our products!',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                SizedBox(height: 1.5.h),

                CustomElevatedButton(
                  onPressed: () {},
                  text: 'Continue Shopping',
                ),
                SizedBox(height: 1.5.h),
                SizedBox(
                  width: double.infinity,
                  height: 5.h,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CheckoutErrorMobileView(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(
                          kDefBorderRaduis,
                        ),
                        side: BorderSide(color: kPrimaryColor),
                      ),
                    ),
                    child: Text(
                      'Track Order',
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 3.5.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
