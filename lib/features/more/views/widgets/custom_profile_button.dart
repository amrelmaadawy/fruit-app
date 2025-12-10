import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({
    super.key,
    required this.icon,
    required this.text,
    this.ontap,
  });
  final IconData icon;
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return GestureDetector(
      onTap: ontap,
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(kDefItemsPadding),
          child: Row(
            children: [
              Icon(icon, size: isLandscape ? 3.sp : 6.sp),
              SizedBox(width: isLandscape ? 1.w : 3.w),
              Text(text, style: TextStyle(fontSize: isLandscape ? 2.sp : 4.sp)),
              Spacer(),
              Icon(
                Icons.arrow_forward_ios,
                size: isLandscape ? 3.sp : 5.5.sp,
                color: kBorderColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
