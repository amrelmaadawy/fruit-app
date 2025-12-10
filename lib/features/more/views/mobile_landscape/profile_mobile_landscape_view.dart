import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class ProfileMobileLandscapeView extends StatelessWidget {
  const ProfileMobileLandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            SizedBox(
              width: 40.w,
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(color: kPrimaryColor, width: 1.5),
                        ),
                        child: CircleAvatar(
                          radius: 6.sp,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(
                          Icons.camera_alt_outlined,
                          size: 3.sp,
                          color: kPrimaryColor,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 2.h),
                  Text('Welcome , Ahmed', style: TextStyle(fontSize: 2.2.sp)),
                  SizedBox(height: 5.h),
                  CustomElevatedButton(onPressed: () {}, text: 'Update'),
                ],
              ),
            ),
            SizedBox(width: 3.w),
            Expanded(
              child: Column(
                children: [
                  CustomTextFormField(
                    controller: nameController,
                    text: 'Name',
                    labelText: 'First And Last Name',
                    validator: (v) {
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 3.sp),

                  CustomTextFormField(
                    controller: phoneController,
                    text: 'Phone Nubmer With whatsapp',
                    labelText: 'Mobile Number',
                    validator: (v) {
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height: 3.sp),

                  CustomTextFormField(
                    controller: passwordController,
                    text: 'Password',
                    labelText: 'Password',
                    validator: (v) {
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
