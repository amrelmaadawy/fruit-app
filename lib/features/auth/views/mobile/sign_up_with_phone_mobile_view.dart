import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/login_view.dart';

class SignUpWithPhoneMobileView extends StatefulWidget {
  const SignUpWithPhoneMobileView({super.key});

  @override
  State<SignUpWithPhoneMobileView> createState() =>
      _SignUpWithPhoneMobileViewState();
}

class _SignUpWithPhoneMobileViewState extends State<SignUpWithPhoneMobileView> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Center(
            child: SizedBox(
              width: isWeb ? 600 : 90.w,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.all(kDefAuthPadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Fruit Market',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: isWeb ? 42 : 10.sp,
                        ),
                      ),
                      SizedBox(height: isWeb ? 10 : 1.5.h),
                      Text(
                        'Sign Up to Wikala',
                        style: TextStyle(
                          fontSize: isWeb ? 32 : 6.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: isWeb ? 10 : 1.h),
                      CustomTextFormField(
                        controller: fullNameController,
                        text: 'Full Name *',
                        labelText: 'First and Last Name',
                        validator: (String? p1) {
                          return null;
                        },
                        keyboardType: TextInputType.text,
                      ),
                      SizedBox(height: isWeb ? 10 : 1.h),
                      CustomTextFormField(
                        controller: passwordController,
                        text: 'Phone Number With Whatsapp *',
                        labelText: 'Mobile Number',
                        validator: (String? p1) {
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: isWeb ? 10 : 1.h),
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
                      SizedBox(height: isWeb ? 22 : 1.5.h),
                      CustomElevatedButton(onPressed: () {}, text: 'Sign Up'),
                      SizedBox(height: isWeb ? 22 : 1.5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Already have an account?|',
                            style: TextStyle(fontSize: isWeb ? 22 : 3.5.sp),
                          ),
                          CustomTextButton(
                            text: 'Login',
                            destination: LoginView(),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
