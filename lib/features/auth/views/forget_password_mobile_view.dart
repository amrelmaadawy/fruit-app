import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/auth/views/receive_otp_mobile_view.dart';
class ForgetPasswordView extends StatefulWidget {
  const ForgetPasswordView({super.key});

  @override
  State<ForgetPasswordView> createState() => _ForgetPasswordViewState();
}

class _ForgetPasswordViewState extends State<ForgetPasswordView> {
  TextEditingController phoneController = TextEditingController();

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
              : (isLandscape ? constraints.maxWidth * 0.6 : constraints.maxWidth * 0.9);

          return Center(
            child: SizedBox(
              width: containerWidth,
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isWeb ? 32 : (isLandscape ? 40 : kDefAuthPadding),
                    vertical: isWeb ? 32 : (isLandscape ? 20 : kDefAuthPadding),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Fruit Market',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontWeight: FontWeight.bold,
                          fontSize: isWeb ? 42 : (isLandscape ? 32 : 10.sp),
                        ),
                      ),
                      
                      SizedBox(height: isLandscape ? 10 : (isWeb ? 20 : 2.h)),
                      
                      Text(
                        'Forget Password',
                        style: TextStyle(
                          fontSize: isWeb ? 32 : (isLandscape ? 24 : 7.sp),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: isLandscape ? 20 : (isWeb ? 20 : 2.h)),
                      
                      CustomTextFormField(
                        controller: phoneController,
                        text: 'Phone Number With Whatsapp *',
                        labelText: 'Mobile Number',
                        validator: (String? p1) {
                          return null;
                        },
                        keyboardType: TextInputType.number,
                      ),
                      
                      SizedBox(height: isLandscape ? 20 : (isWeb ? 20 : 2.h)),
                      
                      CustomElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => RecevieOtpView()),
                          );
                        },
                        text: 'Submit',
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