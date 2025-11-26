import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/receive_otp_view.dart';

class ForgetPasswordMobileView extends StatefulWidget {
  const ForgetPasswordMobileView({super.key});

  @override
  State<ForgetPasswordMobileView> createState() => _ForgetPasswordMobileViewState();
}

class _ForgetPasswordMobileViewState extends State<ForgetPasswordMobileView> {
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding:  EdgeInsets.all(kDefAuthPadding),
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
              CustomElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ReceiveOtpView()),
                  );
                },
                text: 'Submit',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
