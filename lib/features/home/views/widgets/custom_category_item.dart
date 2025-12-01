import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomCategoryItem extends StatelessWidget {
  const CustomCategoryItem({
    super.key,
    required this.imagepath,
    required this.title,
  });
  final String imagepath;
  final String title;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final bool isWeb = width > 1024;
    return SizedBox(
      width: isWeb ? 150 : 22.w,
      height: isWeb ? 300 : 27.w,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefItemsPadding),
              child: Image.asset(
                width: isWeb ? 100 : 13.w,
                height: isWeb ? 100 : 13.w,
                imagepath,
              ),
            ),
          ),
          Text(
            title,
            style: TextStyle(fontSize: isWeb ? 20 : 3.sp, color: kBlackColor),
          ),
        ],
      ),
    );
  }
}
