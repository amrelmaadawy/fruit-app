import 'package:flutter/material.dart';


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

}
