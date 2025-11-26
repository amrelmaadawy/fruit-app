import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, required this.text, required this.destination});
  final String text;
  final Widget destination;
  @override
  Widget build(BuildContext context) {
        bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return TextButton(
      child: Text(
        text,
        style: TextStyle(color: kTextButtonColor, fontSize:isWeb?22: 3.5.sp),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
    );
  }
}
