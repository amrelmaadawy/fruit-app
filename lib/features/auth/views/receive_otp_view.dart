import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RecevieOtpView extends StatelessWidget {
  const RecevieOtpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
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
                'Enter Recived OTP',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 10),
              PinCodeTextField(
                appContext: context,
                pinTheme: PinTheme(
                  fieldWidth: 50,
                  borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  shape: PinCodeFieldShape.circle,

                  inactiveColor: kBorderColor,
                ),
                length: 4,
                onChanged: (value) {},
              ),
              SizedBox(height: 10),
              CustomElevatedButton(
                onPressed: () {
                  // Navigator.pop(context);
                },
                text: 'Submit',
              ),

              Text(
                '60',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: kBorderColor,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not received?', style: TextStyle(fontSize: 16)),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Send Again',
                      style: TextStyle(color: kTextButtonColor, fontSize: 16),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
