import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/checkout_view.dart';
import 'package:fruit_app/features/basket/views/widgets/basket_product_item.dart';

class BasketMobileLandscapeView extends StatelessWidget {
  const BasketMobileLandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      'Basket',
                      style: TextStyle(
                        fontSize: 2.5.sp,
                        fontWeight: FontWeight.bold,
                        color: kPrimaryColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 1.3.sp,
                            color: kBorderColor,
                          ),
                        ),
                      ),
                      Text(
                        '36.00',
                        style: TextStyle(
                          fontSize: 1.3.sp,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
                        ),
                      ),
                      Text(
                        'KD',
                        style: TextStyle(
                          fontSize: 0.8.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Shipping Charges',
                          style: TextStyle(
                            fontSize: 1.5.sp,
                            color: kBorderColor,
                          ),
                        ),
                      ),
                      Text(
                        '1.50',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
                        ),
                      ),
                      Text(
                        'KD',
                        style: TextStyle(
                          fontSize: 1.2.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Bag Total',
                          style: TextStyle(
                            fontSize: 1.6.sp,
                            color: kPrimaryColor,
                          ),
                        ),
                      ),
                      Text(
                        '37.50',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                      Text(
                        'KD',
                        style: TextStyle(
                          fontSize: 1.3.sp,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  SizedBox(height: 5.h),
                  Row(
                    children: [
                      Text(
                        '4 item in cart',
                        style: TextStyle(fontSize: 1.5.sp, color: kBorderColor),
                      ),
                      Spacer(),
                      Text(
                        '37.50 KD',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
                        ),
                      ),
                    ],
                  ),

                  Spacer(),
                  SizedBox(
                    width: 25.w,
                    height: 10.h,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutView(),
                          ),
                        );
                      },
                      child: Text(
                        'Procced To checkout',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 3.w),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => BasketProductItem(),
                itemCount: 5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
