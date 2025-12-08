import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_pop_menu_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/views/widgets/order_time_line.dart';

class OrderTrackingDesktopView extends StatelessWidget {
  const OrderTrackingDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController noteController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Order Tracking',
          style: TextStyle(
            fontSize: 28,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 1200),
          padding: const EdgeInsets.all(40),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Left Side - Order Timeline
              Expanded(
                flex: 3,
                child: Container(
                  padding: const EdgeInsets.all(32),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  ),
                  child: const OrderTimelineWidget(),
                ),
              ),

              const SizedBox(width: 32),

              // Right Side - Order Details & Actions
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    // Order Info Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Order Details',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 20),
                          _buildInfoRow('Order Code:', '#882610'),
                          const SizedBox(height: 12),
                          _buildInfoRow('Items:', '3 items'),
                          const SizedBox(height: 12),
                          _buildInfoRow('Total Amount:', '37.50 KD'),
                          const SizedBox(height: 12),
                          _buildInfoRow('Payment Method:', 'Cash'),
                        ],
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Actions Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Order Actions',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: kPrimaryColor,
                            ),
                          ),
                          const SizedBox(height: 20),

                          CustomElevatedButton(
                            onPressed: () {},
                            text: 'Confirm',
                          ),
                          SizedBox(height: 2.h),
                          SizedBox(
                            width: double.infinity,
                            height: 50,
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
                                          fontSize: 10,
                                        ),
                                      ),
                                    ),

                                    content: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                                        CustomPopMenuButton(
                                          title: 'please select reason',
                                        ),
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
                                              fontSize: 20,
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
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 16),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 16,
            color: kBorderColor,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          value,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
      ],
    );
  }
}
