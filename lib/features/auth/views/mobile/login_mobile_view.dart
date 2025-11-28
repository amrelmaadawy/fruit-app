import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/mobile/forget_password_mobile_view.dart';
import 'package:fruit_app/features/auth/views/mobile/sign_up_mobile_view.dart';
import 'package:fruit_app/features/layout/views/layout_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
        bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: isWeb  ?600:90.w,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(isWeb?32: kDefAuthPadding),
              child: Column(
                children: [
                  Text(
                    'Fruit Market',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize:isWeb?42: 10.sp,
                    ),
                  ),
                  SizedBox(height:isWeb?10: 2.h),
                  Text(
                    'Login to Wikala',
                    style: TextStyle(fontSize:isWeb?32: 7.sp, fontWeight: FontWeight.bold),
                  ),
        
                  SizedBox(height:isWeb?10: 2.h),
                  CustomTextFormField(
                    controller: phoneController,
                    text: 'Phone Number With Whatsapp *',
                    labelText: 'Mobile Number',
                    validator: (String? p1) {
                      return null;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  SizedBox(height:isWeb?10: 2.h),
                  CustomTextFormField(
                    obscureText: true,
                    controller: passwordController,
                    text: 'Password *',
                    labelText: 'Password',
                    validator: (String? p1) {
                      return null;
                    },
                    keyboardType: TextInputType.text,
                  ),
                  SizedBox(height:isWeb?10: 2.h),
                  CustomElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(builder: (context) => LayoutView()),
                      );
                    },
                    text: 'Sign Up',
                  ),
        
                  Align(
                    alignment: AlignmentGeometry.bottomRight,
                    child: CustomTextButton(
                      text: 'Forget Password?',
                      destination: ForgetPasswordView(),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account? |',
                        style: TextStyle(fontSize:isWeb?22: 4.sp),
                      ),
                      CustomTextButton(
                        text: 'Sign Up',
                        destination: SignUpView(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
