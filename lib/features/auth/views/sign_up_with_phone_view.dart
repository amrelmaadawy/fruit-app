import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/login_view.dart';

class SignUpWithPhoneView extends StatefulWidget {
  const SignUpWithPhoneView({super.key});

  @override
  State<SignUpWithPhoneView> createState() => _SignUpWithPhoneViewState();
}

class _SignUpWithPhoneViewState extends State<SignUpWithPhoneView> {
  TextEditingController fullNameController = TextEditingController();
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
                  'Sign Up to Wikala',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  controller: fullNameController,
                  text: 'Full Name *',
                  labelText: 'First and Last Name',
                  validator: (String? p1) {
                    return null;
                  },
                  keyboardType: TextInputType.text,
                ),
                SizedBox(height: 10),
                CustomTextFormField(
                  controller: passwordController,
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
                CustomElevatedButton(onPressed: () {}, text: 'Sign Up'),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?|',
                      style: TextStyle(fontSize: 16),
                    ),
                    CustomTextButton(text: 'Login', destination: LoginView()),
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
