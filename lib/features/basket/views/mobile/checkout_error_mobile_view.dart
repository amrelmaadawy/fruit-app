import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CheckoutErrorMobileView extends StatelessWidget {
  const CheckoutErrorMobileView({super.key});

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
                Image.asset(
                  'assets/images/checkouterror.png',
                  width: 35.w,
                  height: 35.h,
                ),
                Text(
                  'OPS',
                  style: TextStyle(
                    fontSize: 5.5.sp,
                    color: kErrorColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 1.5.h),

                Text(
                  'Error while confirming your payment/order',
                  style: TextStyle(fontSize: 3.6.sp, color: kBorderColor),
                ),

                SizedBox(height: 6.h),

                SizedBox(
                  width: double.infinity,
                  height: 5.h,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: kErrorColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(
                          kDefBorderRaduis,
                        ),
                      ),
                    ),
                    child: Text(
                      'Back',
                      style: TextStyle(
                        color: Colors.white,
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
