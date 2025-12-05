import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class RecevieOtpView extends StatelessWidget {
  const RecevieOtpView({super.key});

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
                        'Enter Received OTP',
                        style: TextStyle(
                          fontSize: isWeb ? 32 : (isLandscape ? 24 : 7.sp),
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      SizedBox(height: isLandscape ? 20 : (isWeb ? 20 : 2.h)),
                      
                      PinCodeTextField(
                        appContext: context,
                        pinTheme: PinTheme(
                          fieldWidth: isWeb ? 50 : (isLandscape ? 45 : 10.sp),
                          fieldHeight: isWeb ? 50 : (isLandscape ? 45 : 10.sp),
                          borderRadius: BorderRadius.circular(kDefBorderRaduis),
                          shape: PinCodeFieldShape.box,
                          inactiveColor: kBorderColor,
                          activeColor: kPrimaryColor,
                          selectedColor: kPrimaryColor,
                        ),
                        length: 4,
                        onChanged: (value) {},
                      ),
                      
                      SizedBox(height: isLandscape ? 20 : (isWeb ? 20 : 2.h)),
                      
                      CustomElevatedButton(
                        onPressed: () {},
                        text: 'Submit',
                      ),

                      SizedBox(height: isLandscape ? 15 : (isWeb ? 20 : 2.h)),

                      Text(
                        '60',
                        style: TextStyle(
                          fontSize: isWeb ? 50 : (isLandscape ? 40 : 7.sp),
                          fontWeight: FontWeight.bold,
                          color: kBorderColor,
                        ),
                      ),
                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Not received?',
                            style: TextStyle(fontSize: isWeb ? 20 : (isLandscape ? 16 : 3.5.sp)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'Send Again',
                              style: TextStyle(
                                color: kTextButtonColor,
                                fontSize: isWeb ? 20 : (isLandscape ? 16 : 3.5.sp),
                              ),
                            ),
                          ),
                        ],
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