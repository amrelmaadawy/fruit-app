import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_pop_menu_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      content: SizedBox(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.min, 
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Filter by',
                  style: TextStyle(
                    fontSize: 4.sp,
                    fontWeight: FontWeight.bold,
                    color: kBlackColor,
                  ),
                ),
              ),
              Row(
                children: [
                  Text(
                    'Delived To ',
                    style: TextStyle(fontSize: 3.sp, color: kBorderColor),
                  ),
                  Icon(Icons.delivery_dining_outlined, color: kPrimaryColor),
                ],
              ),
              CustomPopMenuButton(title: 'Select Area'),
              Text(
                'Offers',
                style: TextStyle(fontSize: 3.sp, color: kBorderColor),
              ),
              Text(
                'Free Delivery',
                style: TextStyle(fontSize: 3.sp, color: kBorderColor),
              ),
              CustomElevatedButton(onPressed: () {}, text: 'Apply Filter'),
              Align(
                alignment: AlignmentGeometry.center,
                child: TextButton(
                  onPressed: () {},
                  child: Text('Cancel', style: TextStyle(color: kBorderColor,fontSize: 2.sp)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
