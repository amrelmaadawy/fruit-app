
import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_pop_menu_button.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

class FilterCard extends StatelessWidget {
  const FilterCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: SizedBox(
        height: MediaQuery.of(context).size.height * 0.32,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: AlignmentGeometry.center,
              child: Text(
                'Filter by',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kBlackColor
                ),
              ),
            ),
            Row(
              children: [
                Text(
                  'Delived To ',
                  style: TextStyle(
                    fontSize: 15,
                    color: kBorderColor,
                  ),
                ),
                Icon(
                  Icons.delivery_dining_outlined,
                  color: kPrimaryColor,
                ),
              ],
            ),
            CustomPopMenuButton(),
            Text(
              'Offers',
              style: TextStyle(
                fontSize: 15,
                color: kBorderColor,
              ),
            ),
            Text(
              'Free Delivery',
              style: TextStyle(
                fontSize: 15,
                color: kBorderColor,
              ),
            ),
            CustomElevatedButton(
              onPressed: () {},
              text: 'Apply Filter',
            ),
            Align(
              alignment: AlignmentGeometry.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Cancel',
                  style: TextStyle(color: kBorderColor),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
