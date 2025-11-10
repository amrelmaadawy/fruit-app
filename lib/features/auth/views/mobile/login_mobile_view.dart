import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/forget_password_view.dart';
import 'package:fruit_app/features/auth/views/sign_up_view.dart';
import 'package:fruit_app/features/layout/views/layout_view.dart';

class LoginMobileView extends StatefulWidget {
  const LoginMobileView({super.key});

  @override
  State<LoginMobileView> createState() => _LoginMobileViewState();
}

class _LoginMobileViewState extends State<LoginMobileView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefAuthPadding),
            child: Column(
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
                  'Login to Wikala',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                SizedBox(height: 10),
                CustomTextFormField(
                  controller: phoneController,
                  text: 'Phone Number With Whatsapp *',
                  labelText: 'Mobile Number',
                  validator: (String? p1) {
                    return null;
                  },
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
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
                SizedBox(height: 10),
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
                      style: TextStyle(fontSize: 16),
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
  }
}
