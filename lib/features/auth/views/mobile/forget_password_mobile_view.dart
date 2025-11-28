import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/mobile/receive_otp_mobile_view.dart';

class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() =>
      _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: isWeb ? 600 : 90.w,
          child: Padding(
            padding: EdgeInsets.all(kDefAuthPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fruit Market',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: isWeb ? 42 : 10.sp,
                  ),
                ),
                SizedBox(height: isWeb ? 20 : 2.h),
                Text(
                  'Login to Wikala',
                  style: TextStyle(
                    fontSize: isWeb ? 32 : 7.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: isWeb ? 20 : 2.h),
                CustomTextFormField(
                  controller: phoneController,
                  text: 'Phone Number With Whatsapp *',
                  labelText: 'Mobile Number',
                  validator: (String? p1) {
                    return null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: isWeb ? 20 : 2.h),
                CustomElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RecevieOtpView()),
                    );
                  },
                  text: 'Submit',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
