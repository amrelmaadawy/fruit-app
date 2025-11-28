import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/mobile/login_mobile_view.dart';
import 'package:fruit_app/features/auth/views/mobile/sign_up_with_phone_mobile_view.dart';
import 'package:fruit_app/features/auth/views/mobile/widgets/custom_sign_in_elevation_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Container(
              width: isWeb ? 600 : 90.w,  
              padding: EdgeInsets.all(isWeb ? 32 : kDefAuthPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  SizedBox(height: isWeb ? 40 : 5.h),

                  Text(
                    'Fruit Market',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: isWeb ? 42 : 10.sp,
                    ),
                  ),

                  SizedBox(height: isWeb ? 10 : 2.h),

                  Text(
                    'Welcome to Our app',
                    style: TextStyle(
                      fontSize: isWeb ? 30 : 6.w,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(height: isWeb ? 40 : 3.h),

                  CustomSignInElevationButton(
                    text: 'Sign in with Phone',
                    color: Colors.white,
                    widget: Icon(Icons.phone, size: isWeb ? 22 : 3.sp),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUpWithPhoneView(),
                        ),
                      );
                    },
                    textColor: const Color(0xff7e7e7e),
                    iconColor: const Color(0xff242729),
                  ),

                  SizedBox(height: isWeb ? 20 : 2.h),

                  CustomSignInElevationButton(
                    text: 'Sign in with Google',
                    color: Colors.white,
                    widget: Image.asset(
                      'assets/images/google logo.png',
                      width: isWeb ? 22 : 3.w,
                      height: isWeb ? 22 : 3.w,
                    ),
                    onPressed: () {},
                    textColor: const Color(0xff7e7e7e),
                    iconColor: const Color(0xff242729),
                  ),

                  SizedBox(height: isWeb ? 20 : 2.h),

                  CustomSignInElevationButton(
                    text: 'Sign in with Facebook',
                    color: const Color(0xff235C95),
                    widget: Icon(
                      FontAwesomeIcons.facebook,
                      color: Colors.white,
                      size: isWeb ? 22 : 3.sp,
                    ),
                    onPressed: () {},
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),

                  SizedBox(height: isWeb ? 30 : 3.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already member?',
                        style: TextStyle(fontSize: isWeb ? 18 : 4.sp),
                      ),
                      CustomTextButton(text: 'Login', destination: LoginView()),
                    ],
                  ),

                  SizedBox(height: isWeb ? 20 : 2.h),

                  Text(
                    'By signing in you are agreeing to our Terms and Conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: isWeb ? 16 : 4.sp,
                    ),
                  ),

                  SizedBox(height: isWeb ? 40 : 5.h),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
