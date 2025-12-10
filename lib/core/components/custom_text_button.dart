import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.destination,
  });

  final String text;
  final Widget destination;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // bool isWeb = constraints.maxWidth >= 1024;
        bool isLandscape =
            MediaQuery.of(context).orientation == Orientation.landscape;

        return TextButton(
            child: Text(
            text,
            style: TextStyle(
              color: kTextButtonColor,
              fontSize: isLandscape ? 2.sp : 3.5.sp,
            ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => destination),
            );
          },
        );
      },
    );
  }
}
