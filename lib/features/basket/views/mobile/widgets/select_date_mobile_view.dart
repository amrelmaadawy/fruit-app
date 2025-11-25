import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_text_form_field.dart';
import 'package:fruit_app/core/services/pick_date_service.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SelectDateMobileView extends StatefulWidget {
  const SelectDateMobileView({super.key});

  @override
  State<SelectDateMobileView> createState() => _SelectDateMobileViewState();
}

class _SelectDateMobileViewState extends State<SelectDateMobileView> {
  TextEditingController selectDateController = TextEditingController();
  DateTime? selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return RadioGroup<DateTime>(
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
                height: MediaQuery.of(context).size.height * 0.08,
                child: RadioMenuButton<DateTime>(
                  value: DateTime.now(),
                  groupValue: selectedDate,
                  onChanged: (DateTime? value) {
                    setState(() {
                      selectedDate = value;
                    });
                  },
                  child: Text('Now'),
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
                  RadioMenuButton<DateTime>(
                    style: ButtonStyle(iconAlignment: IconAlignment.start),
                    value: DateTime.now(),
                    groupValue: selectedDate,
                    onChanged: (DateTime? value) {
                      setState(() {
                        selectedDate = value;
                      });
                    },
                    child: Text('Select Delivery Time'),
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
                          keyboardType: TextInputType.datetime,
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
