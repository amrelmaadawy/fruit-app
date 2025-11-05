import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/login_view.dart';
import 'package:fruit_app/features/auth/views/sign_up_with_phone_view.dart';
import 'package:fruit_app/features/auth/views/widgets/custom_sign_in_elevation_button.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(kDefAuthPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Fruit Market',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 42,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'Welcome to Our app',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                CustomSignInElevationButton(
                  text: 'Sign in with Phone Number',
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
                  textColor: Color(0xff7e7e7e),
                  iconColor: Color(0xff242729),
                ),
                SizedBox(height: 10),

                SizedBox(
                  height: 50,
                  child: SignInButton(
                    width: MediaQuery.of(context).size.width,
                    Buttons.Google,

                    onPressed: () {},
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(25),
                    ),
                  ),
                ),
                SizedBox(height: 10),

                CustomSignInElevationButton(
                  text: 'Sign in with Facebook',
                  color: Color(0xff235C95),
                  icon: FontAwesomeIcons.facebook,
                  onPressed: () {},
                  textColor: Colors.white,
                  iconColor: Colors.white,
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already member?', style: TextStyle(fontSize: 15)),
                    CustomTextButton(text: 'Login', destination: LoginView()),
                  ],
                ),

                Text(
                  'By signing in you are agreeing to our Terms and Conditions',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
