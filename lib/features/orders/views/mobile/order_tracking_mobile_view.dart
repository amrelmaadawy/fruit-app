import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_pop_menu_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/views/widgets/order_time_line.dart';

class OrderTrackingMobileView extends StatelessWidget {
  const OrderTrackingMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController noteController = TextEditingController();
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
            OrderTimelineWidget(),
            SizedBox(height: 2.h),
            CustomElevatedButton(onPressed: () {}, text: 'Confirm'),
            SizedBox(height: 2.h),
            SizedBox(
              width: double.infinity,
              height: 5.h,
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
                            fontSize: 4.5.sp,
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
                              fontSize: 3.5.sp,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          CustomPopMenuButton(title: 'please select reason'),
                          SizedBox(height: 2.h),
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
                                fontSize: 4.sp,
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
