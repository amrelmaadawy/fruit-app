import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/basket/checkout_view.dart';
import 'package:fruit_app/features/basket/views/widgets/basket_product_item.dart';

class BasketDesktopView extends StatelessWidget {
  const BasketDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 1400),
        padding: const EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const Text(
              'Shopping Basket',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              '4 items in your cart',
              style: TextStyle(fontSize: 16, color: Colors.grey.shade600),
            ),
            const SizedBox(height: 32),

            // Main Content
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Left Side - Products List
                  Expanded(
                    flex: 7,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      ),
                      child: Column(
                        children: [
                          // Table Header
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 16,
                            ),
                            decoration: BoxDecoration(
                              color: kPrimaryColor,
                              borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(kDefBorderRaduis),
                                topRight: Radius.circular(kDefBorderRaduis),
                              ),
                            ),
                            child: Row(
                              children: [
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Product',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: kPrimaryColor,
                                    ),
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Price',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: kPrimaryColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Quantity',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: kPrimaryColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                const Expanded(
                                  flex: 1,
                                  child: Text(
                                    'Total',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: kPrimaryColor,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                                Container(width: 48), // للزر Delete
                              ],
                            ),
                          ),

                          // Products List
                          Expanded(
                            child: ListView.separated(
                              padding: const EdgeInsets.all(16),
                              itemCount: 5,
                              separatorBuilder: (context, index) =>
                                  const Divider(height: 24),
                              itemBuilder: (context, index) =>
                                  const BasketProductItem(),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(width: 32),

                  // Right Side - Order Summary
                  SizedBox(
                    width: 400,
                    child: Column(
                      children: [
                        // Order Summary Card
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.all(24),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(
                              kDefBorderRaduis,
                            ),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Order Summary',
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                  color: kPrimaryColor,
                                ),
                              ),
                              const SizedBox(height: 24),

                              // Subtotal
                              _buildPriceRow(
                                'Subtotal',
                                '36.00',
                                isRegular: true,
                              ),
                              const SizedBox(height: 16),

                              // Shipping
                              _buildPriceRow(
                                'Shipping Charges',
                                '1.50',
                                isRegular: true,
                              ),
                              const SizedBox(height: 16),

                              const Divider(),
                              const SizedBox(height: 16),

                              // Total
                              _buildPriceRow(
                                'Bag Total',
                                '37.50',
                                isTotal: true,
                              ),

                              const SizedBox(height: 32),

                              // Checkout Button
                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const CheckoutView(),
                                      ),
                                    );
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kPrimaryColor,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                        kDefBorderRaduis,
                                      ),
                                    ),
                                  ),
                                  child: const Text(
                                    'Proceed To Checkout',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),

                              const SizedBox(height: 16),
                            ],
                          ),
                        ),

                        const SizedBox(height: 24),

                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPriceRow(
    String label,
    String price, {
    bool isRegular = false,
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: isTotal ? 18 : 16,
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            color: isTotal ? kPrimaryColor : kBorderColor,
          ),
        ),
        Row(
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: isTotal ? 20 : 16,
                fontWeight: FontWeight.bold,
                color: isTotal ? kPrimaryColor : kBlackColor,
              ),
            ),
            const SizedBox(width: 4),
            Text(
              'KD',
              style: TextStyle(
                fontSize: isTotal ? 16 : 14,
                fontWeight: FontWeight.bold,
                color: isTotal ? kPrimaryColor : Colors.grey.shade500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
