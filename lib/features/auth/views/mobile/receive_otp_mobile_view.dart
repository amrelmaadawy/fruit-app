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
    bool isWeb = MediaQuery.of(context).size.width >= 1024;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: isWeb ? 600 : 90.w,
          child: Padding(
            padding: EdgeInsets.all(kDefAuthPadding),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Fruit Market',
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: isWeb ? 42 : 10.sp,
                  ),
                ),
                SizedBox(height:isWeb?20: 2.h),
                Text(
                  'Enter Recived OTP',
                  style: TextStyle(
                    fontSize: isWeb ? 32 : 7.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: isWeb ? 20 : 2.h),
                PinCodeTextField(
                  appContext: context,
                  pinTheme: PinTheme(
                    fieldWidth:isWeb?42: 10.sp,
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                    shape: PinCodeFieldShape.circle,

                    inactiveColor: kBorderColor,
                  ),
                  length: 4,
                  onChanged: (value) {},
                ),
                SizedBox(height: isWeb ? 20 : 2.h),
                CustomElevatedButton(
                  onPressed: () {
                    // Navigator.pop(context);
                  },
                  text: 'Submit',
                ),

                Text(
                  '60',
                  style: TextStyle(
                    fontSize:isWeb?50: 7.sp,
                    fontWeight: FontWeight.bold,
                    color: kBorderColor,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not received?', style: TextStyle(fontSize:isWeb?20: 3.5.sp)),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Send Again',
                        style: TextStyle(
                          color: kTextButtonColor,
                          fontSize:isWeb?20: 3.5.sp,
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
  }
}
