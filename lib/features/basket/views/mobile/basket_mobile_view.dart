import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/basket/checkout_view.dart';
import 'package:fruit_app/features/basket/views/widgets/basket_product_item.dart';

class BasketMobileView extends StatelessWidget {
  const BasketMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Basket',
            style: TextStyle(
              fontSize: 6.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemBuilder: (context, index) => BasketProductItem(),
            itemCount: 5,
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Divider(),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Subtotal',
                      style: TextStyle(fontSize: 3.sp, color: kBorderColor),
                    ),
                  ),
                  Text(
                    '36.00',
                    style: TextStyle(
                      fontSize: 3.sp,
                      fontWeight: FontWeight.bold,
                      color: kBorderColor,
                    ),
                  ),
                  Text(
                    'KD',
                    style: TextStyle(
                      fontSize: 2.sp,
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
                      style: TextStyle(fontSize: 3.5.sp, color: kBorderColor),
                    ),
                  ),
                  Text(
                    '1.50',
                    style: TextStyle(
                      fontSize: 3.5.sp,
                      fontWeight: FontWeight.bold,
                      color: kBorderColor,
                    ),
                  ),
                  Text(
                    'KD',
                    style: TextStyle(
                      fontSize: 2.3.sp,
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
                      style: TextStyle(fontSize: 3.sp, color: kPrimaryColor),
                    ),
                  ),
                  Text(
                    '37.50',
                    style: TextStyle(
                      fontSize: 3.5.sp,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  Text(
                    'KD',
                    style: TextStyle(
                      fontSize: 2.3.sp,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '4 item in cart',
                          style: TextStyle(
                            fontSize: 3.5.sp,
                            color: kBorderColor,
                          ),
                        ),
                        Text(
                          '37.50 KD',
                          style: TextStyle(
                            fontSize: 3.5.sp,
                            fontWeight: FontWeight.bold,
                            color: kBorderColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 55.w,
                    height: 5.h,
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
                          fontSize: 3.5.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
