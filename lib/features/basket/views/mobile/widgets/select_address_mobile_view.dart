import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SelectAddressMobileView extends StatelessWidget {
  const SelectAddressMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Select Delivery Address',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: kBlackColor,
          ),
        ),
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
          ),
          child: Padding(
            padding: const EdgeInsets.all(kDefItemsPadding),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Add New Address',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: kBlackColor,
                    ),
                  ),
                ),
                IconButton(onPressed: () {}, icon: Icon(Icons.add)),
              ],
            ),
          ),
        ),

        Card(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(kDefItemsPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.location_on_outlined),
                    Text(
                      'Address 1',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.check_circle, color: kPrimaryColor),
                    ),
                  ],
                ),
                Text(
                  'Jhon',
                  style: TextStyle(fontSize: 16, color: kBlackColor),
                ),
                Text(
                  '01011010112',
                  style: TextStyle(fontSize: 16, color: kBlackColor),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Text(
                  'Room # 1 - Ground Floor, Al Najoum Building, 24 B Street, Dubai - United Arab Emirates',
                  style: TextStyle(fontSize: 16, color: kSubTextColor),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
