import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/services/pick_date_service.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SelectDateMobileView extends StatefulWidget {
  const SelectDateMobileView({super.key});

  @override
  State<SelectDateMobileView> createState() => _SelectDateMobileViewState();
}

class _SelectDateMobileViewState extends State<SelectDateMobileView> {
  TextEditingController selectDateController = TextEditingController();
  String? selectedDate = 'now';
  @override
  Widget build(BuildContext context) {
    return RadioGroup<String>(
      onChanged: (value) {
        setState(() {
          selectedDate = value;
        });
      },
      groupValue: selectedDate,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(kDefItemsPadding),
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
              ),
              child: SizedBox(
                height: 8.h,
                child: RadioMenuButton<String>(
                  value: '',
                  groupValue: selectedDate,
                  onChanged: (String? value) {
                    setState(() {
                      selectedDate = value;
                    });
                  },
                  child: Text('Now', style: TextStyle(fontSize: 4.sp)),
                ),
              ),
            ),
          ),
          Card(
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
                      style: TextStyle(fontSize: 4.sp),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(kDefItemsPadding),
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
        ],
      ),
    );
  }
}
