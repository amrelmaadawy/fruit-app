import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomHomeItem extends StatelessWidget {
  const CustomHomeItem({super.key, required this.imagePath});
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    return Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
      ),
      child: Padding(
        padding: const EdgeInsets.all(3.0),
        child: Image.asset(
          imagePath,
          width: isLandscape ? 8.w : 19.w,
          height: 12.h,
        ),
      ),
    );
  }
}
