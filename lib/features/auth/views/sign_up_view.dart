import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  TextEditingController fullNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(kDefPadding),
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
                    Text('Already have an account?|'),
                    Text('Login', style: TextStyle(color: kTextButtonColor)),
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
