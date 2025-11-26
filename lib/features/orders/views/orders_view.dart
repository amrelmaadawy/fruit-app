import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/model/order_class.dart';
import 'package:fruit_app/features/orders/views/order_tracking_view.dart';

class OrdersView extends StatelessWidget {
  const OrdersView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'My Orders',
            style: TextStyle(
              fontSize: 5.5.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: Orders.orderList.length,
            itemBuilder: (context, index) {
              final order = Orders.orderList[index];

              return Card(
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
                ),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(kDefItemsPadding),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 7.sp,
                        backgroundColor: order.highLightColor,
                        child: order.icon,
                      ),
                      SizedBox(width: 3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.orderNumber,
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: 3.5.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${order.time} . ${order.items} items',
                            style: TextStyle(
                              color: kBorderColor,
                              fontSize: 3.5.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Status :',
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: 3.5.sp,
                                ),
                              ),
                              Text(
                                order.status,
                                style: TextStyle(
                                  color: order.textColor,
                                  fontSize: 3.5.sp,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Spacer(),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => OrderTrackingView(),
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: 6.5.sp,
                          backgroundColor: order.textColor,
                          child: Icon(Icons.arrow_forward, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
