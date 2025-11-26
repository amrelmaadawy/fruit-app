import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class Orders {
  final Color highLightColor;
  final Color textColor;
  final String orderNumber;
  final String time;
  final int items;
  final String status;
  final Widget icon;

  Orders({
    required this.icon,
    required this.highLightColor,
    required this.textColor,
    required this.orderNumber,
    required this.time,
    required this.items,
    required this.status,
  });

  static List<Orders> orderList = [
    Orders(
      highLightColor: kHighLightYellowColor,
      textColor: kTextYellowColor,
      orderNumber: '#243188 - 37 KD',
      time: '4 sep',
      items: 4,
      status: 'Delivering',
      icon: Icon(FontAwesomeIcons.truck, color: kTextYellowColor, size: 7.sp),
    ),
    Orders(
      highLightColor: kHighLightGreenColor,
      textColor: kTextGreenColor,
      orderNumber: '#243188 - 37 KD',
      time: '4 sep',
      items: 4,
      status: 'Finished',
      icon: Icon(Icons.task_outlined, color: kTextGreenColor, size: 7.sp),
    ),
    Orders(
      highLightColor: kHighLightRedColor,
      textColor: kTextRedColor,
      orderNumber: '#243188 - 37 KD',
      time: '4 sep',
      items: 4,
      status: 'Canceled',
      icon: Icon(Icons.cancel_outlined, color: kTextRedColor, size: 7.sp),
    ),
    Orders(
      highLightColor: kHighLightBlueColor,
      textColor: kTextBlueColor,
      orderNumber: '#243188 - 37 KD',
      time: '4 sep',
      items: 4,
      status: 'Working',
      icon: Icon(Icons.person_outline, color: kTextBlueColor, size: 7.sp),
    ),
    Orders(
      highLightColor: kHighLightPurpleColor,
      textColor: kTextPurpleColor,
      orderNumber: '#243188 - 37 KD',
      time: '4 sep',
      items: 4,
      status: 'Delivered',
      icon: Icon(Icons.home_outlined, color: kTextPurpleColor, size: 7.sp),
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
        size: 7.sp,
      ),
    ),
  ];
}
