import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class CustomContactAccount extends StatelessWidget {
  const CustomContactAccount({
    super.key,
    required this.icon,
    required this.iconColor,
  });
  final IconData icon;
  final Color iconColor;
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: kBorderColor, width: 2),
        borderRadius: BorderRadius.circular(50),
      ),
      child: CircleAvatar(
        radius: isLandscape ? 3.2.sp : 7.sp,
        backgroundColor: Colors.white,
        child: Icon(icon, color: iconColor),
      ),
    );
  }
}
