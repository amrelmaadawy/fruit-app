import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class OrderTrackingView extends StatelessWidget {
  const OrderTrackingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Tracking',
          style: TextStyle(
            fontSize: 5.5.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Your Order Code:',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                Text(
                  '#882610',
                  style: TextStyle(
                    fontSize: 4.sp,
                    fontWeight: FontWeight.bold,
                    color: kBorderColor,
                  ),
                ),
              ],
            ),
            Text(
              '3 items - 37.50 KD',
              style: TextStyle(fontSize: 4.sp, color: kBorderColor),
            ),
            Text(
              'Payment Method : Cash',
              style: TextStyle(fontSize: 4.sp, color: kBorderColor),
            ),
            SizedBox(height: 2.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Delivered',
                  style: TextStyle(
                    fontSize: 4.5.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Estimated for 10 September, 2021 ',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Out for delivery',
                  style: TextStyle(
                    fontSize: 4.5.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Estimated for 10 September, 2021 ',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Order shipped',
                  style: TextStyle(
                    fontSize: 4.5.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Estimated for 10 September, 2021 ',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Confirmed',
                  style: TextStyle(
                    fontSize: 4.5.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Your order has been confirmed ',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
                SizedBox(height: 4.h),
                Text(
                  'Order Placed',
                  style: TextStyle(
                    fontSize: 4.5.sp,
                    color: kBlackColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'We have received your order',
                  style: TextStyle(fontSize: 4.sp, color: kBorderColor),
                ),
              ],
            ),
            SizedBox(height: 2.h),
            CustomElevatedButton(onPressed: () {}, text: 'Confirm'),
            SizedBox(height: 2.h),
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
                  'Cancel Order',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 4.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
