import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class PaymentMobileLandscapeView extends StatefulWidget {
  const PaymentMobileLandscapeView({super.key});

  @override
  State<PaymentMobileLandscapeView> createState() =>
      _PaymentMobileLandscapeViewState();
}

class _PaymentMobileLandscapeViewState
    extends State<PaymentMobileLandscapeView> {
  TextEditingController couponController = TextEditingController();
  String? selectedPayment = 'credit';
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Coupon Code',
                style: TextStyle(
                  fontSize: 2.sp,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              SizedBox(height: 4.h),
              CustomTextFormField(
                suffixIcon: Padding(
                  padding: const EdgeInsets.all(5),
                  child: SizedBox(
                    width: 15.w,
                    height: 6.h,
                    child: CustomElevatedButton(
                      onPressed: () {},
                      text: 'Apply',
                    ),
                  ),
                ),
                controller: couponController,
                text: '',
                labelText: 'Do You Have any Coupon Code?',
                validator: (v) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 2.h),

              Text(
                'Order Details',
                style: TextStyle(
                  fontSize: 2.sp,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Total Items',
                          style: TextStyle(
                            fontSize: 1.5.sp,
                            color: kBorderColor,
                          ),
                        ),
                      ),
                      Text(
                        '4 Items in Cart',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Subtotal',
                          style: TextStyle(
                            fontSize: 1.5.sp,
                            color: kBorderColor,
                          ),
                        ),
                      ),
                      Text(
                        '36.00 KD',
                        style: TextStyle(
                          fontSize: 1.5.sp,
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
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
                          fontSize: 1.sp,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade500,
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Bag Total',
                          style: TextStyle(
                            fontSize: 1.5.sp,
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
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
                          fontSize: 1.sp,
                          fontWeight: FontWeight.bold,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Payments',
                        style: TextStyle(
                          fontSize: 2.sp,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      RadioGroup<String>(
                        onChanged: (value) {
                          setState(() {
                            selectedPayment = value;
                          });
                        },
                        groupValue: selectedPayment,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(kDefItemsPadding),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    kDefBorderRaduis,
                                  ),
                                ),
                                child: SizedBox(
                                  height: 10.h,
                                  child: RadioMenuButton<String>(
                                    value: 'credit',
                                    groupValue: selectedPayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedPayment = value;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/credit card.png',
                                          width: 2.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(width: 0.5.w),
                                        Text(
                                          'Credit Card / Debit Card',
                                          style: TextStyle(fontSize: 1.5.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(kDefItemsPadding),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    kDefBorderRaduis,
                                  ),
                                ),
                                child: SizedBox(
                                  height: 10.h,
                                  child: RadioMenuButton<String>(
                                    value: 'cash',
                                    groupValue: selectedPayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedPayment = value;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/cash.png',
                                          width: 2.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(width: 2.w),
                                        Text(
                                          'Cash of delivery',
                                          style: TextStyle(fontSize: 1.5.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.all(kDefItemsPadding),
                              child: Card(
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadiusGeometry.circular(
                                    kDefBorderRaduis,
                                  ),
                                ),
                                child: SizedBox(
                                  height: 10.h,
                                  child: RadioMenuButton<String>(
                                    value: 'knet',
                                    groupValue: selectedPayment,
                                    onChanged: (String? value) {
                                      setState(() {
                                        selectedPayment = value;
                                      });
                                    },
                                    child: Row(
                                      children: [
                                        Image.asset(
                                          'assets/images/knet.png',
                                          width: 2.w,
                                          height: 15.h,
                                        ),
                                        SizedBox(width: 2.w),
                                        Text(
                                          'kent',
                                          style: TextStyle(fontSize: 1.5.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
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
