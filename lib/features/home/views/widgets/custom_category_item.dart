import 'package:flutter/material.dart';
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
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.23,
      height: MediaQuery.of(context).size.width * 0.25,
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
            ),
            child: Padding(
              padding: const EdgeInsets.all(kDefItemsPadding),
              child: Image.asset(
                width: MediaQuery.of(context).size.width * 0.13,
                height: MediaQuery.of(context).size.width * 0.13,
                imagepath,
              ),
            ),
          ),
          Text(title, style: TextStyle(fontSize: 14, color: kBlackColor)),
        ],
      ),
    );
  }
}
