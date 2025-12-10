import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/more/views/widgets/custom_contact_account.dart';

class SupportMobileView extends StatelessWidget {
  const SupportMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController mobileNumberController = TextEditingController();
    TextEditingController messageController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Contact Us',
          style: TextStyle(
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kDefHomePadding),
          child: Column(
            children: [
              CustomTextFormField(
                controller: nameController,
                text: 'Name',
                labelText: '',
                validator: (v) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 2.h),
              CustomTextFormField(
                controller: mobileNumberController,
                text: 'Mobile Number',
                labelText: '',
                validator: (v) {
                  return null;
                },
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 2.h),

              CustomTextFormField(
                controller: messageController,
                text: 'message',
                labelText: '',
                validator: (v) {
                  return null;
                },
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 4.h),
              CustomElevatedButton(onPressed: () {}, text: 'Submit'),
              SizedBox(height: 4.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomContactAccount(
                    icon: FontAwesomeIcons.phone,
                    iconColor: Colors.green,
                  ),
                  CustomContactAccount(
                    icon: FontAwesomeIcons.facebook,
                    iconColor: Colors.blue,
                  ),
                  CustomContactAccount(
                    icon: FontAwesomeIcons.instagram,
                    iconColor: Colors.red,
                  ),
                  CustomContactAccount(
                    icon: FontAwesomeIcons.youtube,
                    iconColor: Colors.red,
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
