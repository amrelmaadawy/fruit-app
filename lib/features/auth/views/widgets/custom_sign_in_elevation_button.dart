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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth >= 1024;
        bool isLandscape =
            MediaQuery.of(context).orientation == Orientation.landscape;

        return ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 2,
            backgroundColor: color,
            padding: EdgeInsets.symmetric(
              horizontal: isWeb ? 20 : (isLandscape ? 16 : kDefHomePadding),
              vertical: isWeb ? 16 : (isLandscape ? 12 : kDefHomePadding),
            ),
          ),
          onPressed: onPressed,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(child: widget),
              SizedBox(width: isWeb ? 22 : (isLandscape ? 2.w : 3.w)),
              Text(
                text,
                style: TextStyle(
                  fontSize: isWeb ? 22 : (isLandscape ? 2.sp : 3.sp),
                  color: textColor,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
