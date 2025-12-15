import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/login_mobile_view.dart';
class SignUpWithPhoneView extends StatefulWidget {
  const SignUpWithPhoneView({super.key});

  @override
  State<SignUpWithPhoneView> createState() => _SignUpWithPhoneViewState();
}

class _SignUpWithPhoneViewState extends State<SignUpWithPhoneView> {
  TextEditingController fullNameController = TextEditingController();
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
              : (isLandscape ? constraints.maxWidth * 0.7 : constraints.maxWidth * 0.9);

          return SingleChildScrollView(
            child: Center(
              child: SizedBox(
                width: containerWidth,
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: isWeb ? 32 : (isLandscape ? 40 : kDefAuthPadding),
                      vertical: isWeb ? 32 : (isLandscape ? 20 : kDefAuthPadding),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Fruit Market',
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.bold,
                            fontSize: isWeb ? 42 : (isLandscape ? 32 : 10.sp),
                          ),
                        ),
                        SizedBox(height: isLandscape ? 8 : (isWeb ? 10 : 1.5.h)),
                        
                        Text(
                          'Sign Up to Wikala',
                          style: TextStyle(
                            fontSize: isWeb ? 32 : (isLandscape ? 24 : 6.sp),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        
                        SizedBox(height: isLandscape ? 15 : (isWeb ? 10 : 1.h)),
                        
                        CustomTextFormField(
                          controller: fullNameController,
                          text: 'Full Name *',
                          labelText: 'First and Last Name',
                          validator: (String? p1) {
                            return null;
                          },
                          keyboardType: TextInputType.text,
                        ),
                        
                        SizedBox(height: isLandscape ? 10 : (isWeb ? 10 : 1.h)),
                        
                        CustomTextFormField(
                          controller: phoneController,
                          text: 'Phone Number With Whatsapp *',
                          labelText: 'Mobile Number',
                          validator: (String? p1) {
                            return null;
                          },
                          keyboardType: TextInputType.number,
                        ),
                        
                        SizedBox(height: isLandscape ? 10 : (isWeb ? 10 : 1.h)),
                        
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
                        
                        SizedBox(height: isLandscape ? 15 : (isWeb ? 22 : 1.5.h)),
                        
                        CustomElevatedButton(onPressed: () {}, text: 'Sign Up'),
                        
                        SizedBox(height: isLandscape ? 12 : (isWeb ? 22 : 1.5.h)),
                        
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? |',
                              style: TextStyle(fontSize: isWeb ? 22 : (isLandscape ? 16 : 3.5.sp)),
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
            ),
          );
        },
      ),
    );
  }
}