import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/login_view.dart';
import 'package:fruit_app/features/auth/views/mobile/widgets/custom_sign_in_elevation_button.dart';
import 'package:fruit_app/features/auth/views/sign_up_with_phone_view.dart';
class SignUpMobileView extends StatelessWidget {
  const SignUpMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Container(
              width: screenWidth * 0.9,
              padding: const EdgeInsets.all(kDefAuthPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: screenHeight * 0.05),

                  Text(
                    'Fruit Market',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.1, 
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  Text(
                    'Welcome to Our app',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06, 
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  CustomSignInElevationButton(
                    text: 'Sign in with Phone',
                    color: Colors.white,
                    icon: Icons.phone,
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
                  SizedBox(height: screenHeight * 0.02),

                  SizedBox(
                    height: screenHeight * 0.06,
                    width: double.infinity,
                    child: SignInButton(
                      Buttons.Google,
                      onPressed: () {},
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  CustomSignInElevationButton(
                    text: 'Sign in with Facebook',
                    color: const Color(0xff235C95),
                    icon: FontAwesomeIcons.facebook,
                    onPressed: () {},
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                  SizedBox(height: screenHeight * 0.03),

                  // Login text
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Already member?',
                        style: TextStyle(fontSize: 15),
                      ),
                      CustomTextButton(
                        text: 'Login',
                        destination: LoginView(),
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Terms
                  Text(
                    'By signing in you are agreeing to our Terms and Conditions',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 13),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
