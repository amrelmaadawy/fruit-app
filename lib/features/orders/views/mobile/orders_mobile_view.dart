import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/orders/model/order_class.dart';
import 'package:fruit_app/features/orders/views/order_tracking_view.dart';

class OrdersMobileView extends StatelessWidget {
  const OrdersMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
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
          size: isLandscape ? 3.2.sp : 7.sp,
        ),
      ),
      Orders(
        highLightColor: kHighLightGreenColor,
        textColor: kTextGreenColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Finished',
        icon: Icon(Icons.task_outlined, color: kTextGreenColor, size: isLandscape ? 3.2.sp: 7.sp),
      ),
      Orders(
        highLightColor: kHighLightRedColor,
        textColor: kTextRedColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Canceled',
        icon: Icon(Icons.cancel_outlined, color: kTextRedColor, size:isLandscape ? 3.2.sp : 7.sp),
      ),
      Orders(
        highLightColor: kHighLightBlueColor,
        textColor: kTextBlueColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Working',
        icon: Icon(Icons.person_outline, color: kTextBlueColor, size:isLandscape ? 3.2.sp : 7.sp),
      ),
      Orders(
        highLightColor: kHighLightPurpleColor,
        textColor: kTextPurpleColor,
        orderNumber: '#243188 - 37 KD',
        time: '4 sep',
        items: 4,
        status: 'Delivered',
        icon: Icon(Icons.home_outlined, color: kTextPurpleColor, size:isLandscape ? 3.2.sp : 7.sp),
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
          size:isLandscape ? 3.2.sp : 7.sp,
        ),
      ),
    ];
    return Column(
      children: [
        Center(
          child: Text(
            'My Orders',
            style: TextStyle(
              fontSize: isLandscape ? 3.sp : 5.5.sp,
              fontWeight: FontWeight.bold,
              color: kPrimaryColor,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: orderList.length,
            itemBuilder: (context, index) {
              final order = orderList[index];

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
                        radius: isLandscape ? 3.sp : 7.sp,
                        backgroundColor: order.highLightColor,
                        child: order.icon,
                      ),
                      SizedBox(width: isLandscape ? 1.w : 3.w),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            order.orderNumber,
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: isLandscape ? 2.sp : 3.5.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            '${order.time} . ${order.items} items',
                            style: TextStyle(
                              color: kBorderColor,
                              fontSize: isLandscape ? 2.sp : 3.5.sp,
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Status :',
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: isLandscape ? 2.sp : 3.5.sp,
                                ),
                              ),
                              Text(
                                order.status,
                                style: TextStyle(
                                  color: order.textColor,
                                  fontSize: isLandscape ? 2.sp : 3.5.sp,
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
                          radius: isLandscape ? 3.sp : 6.5.sp,
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
