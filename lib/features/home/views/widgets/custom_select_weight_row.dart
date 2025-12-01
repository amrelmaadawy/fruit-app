import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomSelectWeightRow extends StatelessWidget {
  const CustomSelectWeightRow({super.key, required this.onTap, required this.title});
  final void Function() onTap;
  final String title;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
              title,
                style: TextStyle(
                  fontSize: 3.5.sp,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor,
                ),
              ),
              Icon(Icons.expand_more_outlined,size: 5.sp,),
            ],
          ),
        ),
      ),
    );
  }
}
