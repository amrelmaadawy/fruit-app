import 'package:flutter/material.dart';

enum DeviceType { mobile, tablet, desktop }

class Responsive {
  static DeviceType getDeviceType(double width) {
    if (width >= 1000) return DeviceType.desktop;
    if (width >= 600) return DeviceType.tablet;
    return DeviceType.mobile;
  }

  static bool isMobile(context) =>
      getDeviceType(MediaQuery.of(context).size.width) == DeviceType.mobile;
       static bool isTablet(context) =>
      getDeviceType(MediaQuery.of(context).size.width) == DeviceType.tablet;
       static bool isDesktop(context) =>
      getDeviceType(MediaQuery.of(context).size.width) == DeviceType.desktop;
}
