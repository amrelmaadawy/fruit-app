import 'package:flutter/material.dart';

enum DeviceType { mobile, desktop }

class Responsive {
  static DeviceType getDeviceType(double width) {
    if (width >= 1000) return DeviceType.desktop;
    return DeviceType.mobile;
  }


  static bool isMobile(context) =>
      getDeviceType(MediaQuery.of(context).size.width) == DeviceType.mobile;
      static bool isDesktop(context) =>
      getDeviceType(MediaQuery.of(context).size.width) == DeviceType.desktop;
}
