import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/services/pick_date_service.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SelectDateMobileLandscapeView extends StatefulWidget {
  const SelectDateMobileLandscapeView({super.key});

  @override
  State<SelectDateMobileLandscapeView> createState() =>
      _SelectDateMobileLandscapeViewState();
}

class _SelectDateMobileLandscapeViewState
    extends State<SelectDateMobileLandscapeView> {
  TextEditingController selectDateController = TextEditingController();
  String? selectedDate = 'now';
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(kDefItemsPadding),
              child: SizedBox(
                width: 40.w,
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      kDefBorderRaduis,
                    ),
                  ),
                  child: SizedBox(
                    height: 10.h,
                    child: RadioMenuButton<String>(
                      value: '',
                      groupValue: selectedDate,
                      onChanged: (String? value) {
                        setState(() {
                          selectedDate = value;
                        });
                      },
                      child: Text('Now', style: TextStyle(fontSize: 2.sp)),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 40.w,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kDefItemsPadding),
                  child: Column(
                    children: [
                      RadioMenuButton<String>(
                        style: ButtonStyle(iconAlignment: IconAlignment.start),
                        value: 'now',
                        groupValue: selectedDate,
                        onChanged: (String? value) {
                          setState(() {
                            selectedDate = value;
                          });
                        },
                        child: Text(
                          'Select Delivery Time',
                          style: TextStyle(fontSize: 2.sp),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2),
                        child: GestureDetector(
                          onTap: () async {
                            await PickDateService.pickDate(
                              context,
                              selectDateController,
                            );
                          },
                          child: AbsorbPointer(
                            child: CustomTextFormField(
                              controller: selectDateController,
                              text: '',
                              labelText: 'Select Date',
                              validator: (value) {
                                return null;
                              },
                              keyboardType: TextInputType.text,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
