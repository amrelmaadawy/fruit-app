import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_pop_menu_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/views/widgets/order_time_line.dart';

class OrderTrackingMobileLandscapeView extends StatelessWidget {
  const OrderTrackingMobileLandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController noteController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Order Tracking',
          style: TextStyle(
            fontSize: 3.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: SingleChildScrollView(
          child: Row(
            children: [
              SizedBox(
                width: 30.w,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Your Order Code:',
                          style: TextStyle(fontSize: 2.sp, color: kBorderColor),
                        ),
                        Text(
                          '#882610',
                          style: TextStyle(
                            fontSize: 2.sp,
                            fontWeight: FontWeight.bold,
                            color: kBorderColor,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '3 items - 37.50 KD',
                      style: TextStyle(fontSize: 2.sp, color: kBorderColor),
                    ),
                    Text(
                      'Payment Method : Cash',
                      style: TextStyle(fontSize: 2.sp, color: kBorderColor),
                    ),
                    SizedBox(height: 3.h),
                    CustomElevatedButton(onPressed: () {}, text: 'Confirm'),
                    SizedBox(height: 3.h),
                    SizedBox(
                      width: double.infinity,
                      height: 10.h,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: Colors.white,
                              title: Center(
                                child: Text(
                                  'Cancel Order',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 1.5.sp,
                                  ),
                                ),
                              ),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Reason',
                                    style: TextStyle(
                                      color: kSubTextColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 1.sp,
                                    ),
                                  ),
                                  SizedBox(height: 1.h),
                                  CustomPopMenuButton(
                                    title: 'please select reason',
                                  ),
                                  SizedBox(height: 1.h),
                                  CustomTextFormField(
                                    controller: noteController,
                                    text: 'Note',
                                    labelText: 'Note',
                                    validator: (v) {
                                      return null;
                                    },

                                    keyboardType: TextInputType.text,
                                  ),
                                ],
                              ),
                              actions: [
                                CustomElevatedButton(
                                  onPressed: () {},
                                  text: 'Confirm Cancelation',
                                ),
                                SizedBox(height: 2.h),
                                Center(
                                  child: TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: Text(
                                      'Close',
                                      style: TextStyle(
                                        color: kBorderColor,
                                        fontSize: 1.sp,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
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
                            fontSize: 2.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 50.w, child: OrderTimelineWidget()),
            ],
          ),
        ),
      ),
    );
  }
}
