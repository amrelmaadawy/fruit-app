import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomSignInElevationButton extends StatelessWidget {
  const CustomSignInElevationButton({
    super.key,
    required this.text,
    required this.color,
    required this.onPressed,
    required this.widget,
    required this.textColor,
    this.iconColor,
  });
  final String text;
  final Color color;
  final Color textColor;
  final Color? iconColor;
  final void Function() onPressed;
  final Widget widget;
  @override
  Widget build(BuildContext context) {
        bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return ElevatedButton(
      style: ElevatedButton.styleFrom(elevation: 2, backgroundColor: color),

      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            SizedBox(child: widget,),
            SizedBox(width:isWeb?22: 3.w),
            Text(
              text,
              style: TextStyle(fontSize: isWeb?22:3.sp, color: textColor),
            ),
          ],
        ),
      ),
    );
  }
}
