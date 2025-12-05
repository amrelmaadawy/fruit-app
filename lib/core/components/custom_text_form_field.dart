import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.text,
    required this.labelText,
    required this.validator,
    required this.keyboardType,
    this.suffixIcon,
    this.obscureText = false,
    this.prefixIcon,
  });

  final TextEditingController controller;
  final String text;
  final String labelText;
  final String? Function(String?) validator;
  final TextInputType keyboardType;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isWeb = constraints.maxWidth >= 1024;
        bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (text.isNotEmpty)
              Text(
                text,
                style: TextStyle(
                  fontSize: isWeb ? 20 : (isLandscape ? 16 : 3.5.sp),
                  fontWeight: FontWeight.w600,
                  color: kSubTextColor,
                ),
              ),
            
            if (text.isNotEmpty)
              SizedBox(height: isWeb ? 12 : (isLandscape ? 8 : 1.h)),
            
            TextFormField(
              obscureText: obscureText,
              controller: controller,
              validator: validator,
              keyboardType: keyboardType,
              cursorColor: kPrimaryColor,
              style: TextStyle(
                fontSize: isWeb ? 18 : (isLandscape ? 15 : 3.5.sp),
              ),
              decoration: InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon: suffixIcon,
                labelText: labelText,
                labelStyle: TextStyle(
                  fontSize: isWeb ? 18 : (isLandscape ? 14 : 3.sp),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: isWeb ? 16 : (isLandscape ? 14 : 1.5.sp),
                  vertical: isWeb ? 16 : (isLandscape ? 12 : 1.5.sp),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  borderSide: BorderSide(color: kSubTextColor),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  borderSide: BorderSide(color: kSubTextColor),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: kPrimaryColor, width: 2),
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}