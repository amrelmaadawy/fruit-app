import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class PaymentMobileView extends StatefulWidget {
  const PaymentMobileView({super.key});

  @override
  State<PaymentMobileView> createState() => _PaymentMobileViewState();
}

class _PaymentMobileViewState extends State<PaymentMobileView> {
  TextEditingController couponController = TextEditingController();
  String? selectedPayment = 'credit';
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Coupon Code',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
        CustomTextFormField(
          suffixIcon: Padding(
            padding: const EdgeInsets.all(5),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              height: MediaQuery.of(context).size.height * 0.02,
              child: CustomElevatedButton(onPressed: () {}, text: 'Apply'),
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
        SizedBox(height: MediaQuery.of(context).size.height * 0.02),

        Text(
          'Order Details',
          style: TextStyle(
            fontSize: 18,
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
                    style: TextStyle(fontSize: 16, color: kBorderColor),
                  ),
                ),
                Text(
                  '4 Items in Cart',
                  style: TextStyle(
                    fontSize: 16,
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
                    style: TextStyle(fontSize: 16, color: kBorderColor),
                  ),
                ),
                Text(
                  '36.00 KD',
                  style: TextStyle(
                    fontSize: 16,
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
                    style: TextStyle(fontSize: 16, color: kBorderColor),
                  ),
                ),
                Text(
                  '1.50',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kBorderColor,
                  ),
                ),
                Text(
                  'KD',
                  style: TextStyle(
                    fontSize: 12,
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
                      fontSize: 16,
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  '37.50',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
                Text(
                  'KD',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.02),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Payments',
                  style: TextStyle(
                    fontSize: 18,
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
                            height: MediaQuery.of(context).size.height * 0.065,
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
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.08,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text('Credit Card / Debit Card'),
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
                            height: MediaQuery.of(context).size.height * 0.065,
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
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.08,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text('Cash of delivery'),
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
                            height: MediaQuery.of(context).size.height * 0.065,
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
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.09,
                                    height:
                                        MediaQuery.of(context).size.height *
                                        0.08,
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width *
                                        0.02,
                                  ),
                                  Text('kent'),
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
    );
  }
}
