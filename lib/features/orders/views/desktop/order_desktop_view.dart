import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/model/order_class.dart';
import 'package:fruit_app/features/orders/views/order_tracking_view.dart';

class OrdersDesktopView extends StatelessWidget {
  const OrdersDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    List<Orders> orderList = [
      Orders(
        highLightColor: kHighLightYellowColor,
        textColor: kTextYellowColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Delivering',
        icon: Icon(
          FontAwesomeIcons.truck,
          color: kTextYellowColor,
          size: 24,
        ),
      ),
      Orders(
        highLightColor: kHighLightGreenColor,
        textColor: kTextGreenColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Finished',
        icon: Icon(Icons.task_outlined, color: kTextGreenColor, size: 24),
      ),
      Orders(
        highLightColor: kHighLightRedColor,
        textColor: kTextRedColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Canceled',
        icon: Icon(Icons.cancel_outlined, color: kTextRedColor, size: 24),
      ),
      Orders(
        highLightColor: kHighLightBlueColor,
        textColor: kTextBlueColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Working',
        icon: Icon(Icons.person_outline, color: kTextBlueColor, size: 24),
      ),
      Orders(
        highLightColor: kHighLightPurpleColor,
        textColor: kTextPurpleColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Delivered',
        icon: Icon(Icons.home_outlined, color: kTextPurpleColor, size: 24),
      ),
      Orders(
        highLightColor: kHighLightLightBlueColor,
        textColor: kTextLightBlueColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'New',
        icon: Icon(
          Icons.new_releases_outlined,
          color: kTextLightBlueColor,
          size: 24,
        ),
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          // Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'My Orders',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              // يمكن إضافة فلاتر أو بحث هنا
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.filter_list, size: 28),
                    onPressed: () {},
                  ),
                  SizedBox(width: 16),
                  IconButton(
                    icon: Icon(Icons.search, size: 28),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24),

          // Table Header
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(kDefBorderRaduis),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Text(
                    'Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Text(
                    'Order Number',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Date',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Items',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Status',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Action',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: kPrimaryColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(height: 16),

          // Orders List
          Expanded(
            child: ListView.builder(
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                final order = orderList[index];

                return Container(
                  margin: EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Material(
                    color: Colors.transparent,
                    child: InkWell(
                      borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrderTrackingView(),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 24,
                          vertical: 20,
                        ),
                        child: Row(
                          children: [
                            // Status Icon
                            Expanded(
                              flex: 1,
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 24,
                                    backgroundColor: order.highLightColor,
                                    child: order.icon,
                                  ),
                                ],
                              ),
                            ),

                            Expanded(
                              flex: 2,
                              child: Text(
                                order.orderNumber,
                                style: TextStyle(
                                  color: kBlackColor,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),

                            Expanded(
                              flex: 1,
                              child: Text(
                                order.time,
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            // Items Count
                            Expanded(
                              flex: 1,
                              child: Text(
                                '${order.items} items',
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            // Status Badge
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 8,
                                  ),
                                  decoration: BoxDecoration(
                                    color: order.highLightColor,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Text(
                                    order.status,
                                    style: TextStyle(
                                      color: order.textColor,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ),

                            // Action Button
                            Expanded(
                              flex: 1,
                              child: Center(
                                child: ElevatedButton.icon(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            OrderTrackingView(),
                                      ),
                                    );
                                  },
                                  icon: Icon(
                                    Icons.visibility_outlined,
                                    size: 18,
                                  ),
                                  label: Text('View'),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: order.textColor,
                                    foregroundColor: Colors.white,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 20,
                                      vertical: 12,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
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
              },
            ),
          ),

          // Pagination (اختياري)
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: () {},
              ),
              Text('1 / 5', style: TextStyle(fontSize: 16)),
              IconButton(
                icon: Icon(Icons.chevron_right),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}