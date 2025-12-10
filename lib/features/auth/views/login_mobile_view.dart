import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/forget_password_mobile_view.dart';
import 'package:fruit_app/features/auth/views/sign_up_mobile_view.dart';
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
    return Scaffold(
      appBar: AppBar(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          bool isWeb = constraints.maxWidth >= 1024;
          bool isLandscape = constraints.maxWidth > constraints.maxHeight;

          double containerWidth = isWeb
              ? 600
              : (isLandscape
                    ? constraints.maxWidth * 0.7
                    : constraints.maxWidth * 0.9);

          return Center(
            child: SizedBox(
              width: containerWidth,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isWeb
                        ? 32
                        : (isLandscape ? 40 : kDefAuthPadding),
                    vertical: isWeb ? 32 : (isLandscape ? 20 : kDefAuthPadding),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Fruit Market',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: isWeb ? 42 : (isLandscape ? 32 : 10.sp),
                        ),
                      ),

                      SizedBox(height: isLandscape ? 8 : (isWeb ? 10 : 2.h)),

                      Text(
                        'Login to Wikala',
                        style: TextStyle(
                          fontSize: isWeb ? 32 : (isLandscape ? 24 : 7.sp),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: isLandscape ? 15 : (isWeb ? 10 : 2.h)),

                      CustomTextFormField(
                        controller: phoneController,
                        text: 'Phone Number With Whatsapp *',
                        labelText: 'Mobile Number',
                        validator: (String? p1) {
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),

                      SizedBox(height: isLandscape ? 10 : (isWeb ? 10 : 2.h)),

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

                      SizedBox(height: isLandscape ? 15 : (isWeb ? 10 : 2.h)),

                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LayoutView(),
                            ),
                          );
                        },
                        text: 'Sign Up',
                      ),

                      Align(
                        alignment: AlignmentDirectional.centerEnd,
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
                            style: TextStyle(
                              fontSize: isWeb
                                  ? 22
                                  : (isLandscape ? 16 : 3.8.sp),
                            ),
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
          );
        },
      ),
    );
  }
}
