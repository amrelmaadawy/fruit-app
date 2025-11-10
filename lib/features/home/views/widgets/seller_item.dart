import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SellerItem extends StatelessWidget {
  const SellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: Image.asset('assets/images/companyLogo.png'),
            ),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Seller Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 19,
                            color: kBlackColor
                          ),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(color: kBorderColor, fontSize: 15),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.delivery_dining_outlined,
                        color: kPrimaryColor,
                      ),
                      Expanded(
                        child: Text(
                          'Delivery Charges :0.5 KD ',
                          style: TextStyle(fontSize: 15, color: kBorderColor),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Open',
                        style: TextStyle(
                          color: kOpenGreenColor,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Beverages',
                        style: TextStyle(color: kFoodNameColor, fontSize: 15),
                      ),
                      Spacer(),
                      Text(
                        '2.5 Km',
                        style: TextStyle(fontSize: 13, color: kPrimaryColor),
                      ),
                      Icon(Icons.location_on_outlined, color: kPrimaryColor),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
