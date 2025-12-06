import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class SellerItem extends StatelessWidget {
  const SellerItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isWeb = width > 1024;
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;

    final double avatarRadius = isWeb
        ? 40
        : isLandscape
        ? 3.w
        : 6.w;

    final double titleFont = isWeb
        ? 22
        : isLandscape
        ? 2.5.sp
        : 4.sp;

    final double smallFont = isWeb
        ? 16
        : isLandscape
        ? 1.5.sp
        : 3.sp;

    final double iconSize = isWeb
        ? 26
        : isLandscape
        ? 3.5.sp
        : 5.sp;

    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kDefBorderRaduis),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: avatarRadius,
              child: Image.asset('assets/images/companyLogo.png'),
            ),

            const SizedBox(width: 12),

            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          'Seller Name',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: titleFont,
                            color: kBlackColor,
                          ),
                        ),
                      ),
                      Text(
                        '4.5',
                        style: TextStyle(
                          color: kBorderColor,
                          fontSize: smallFont,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      Icon(
                        Icons.delivery_dining_outlined,
                        color: kPrimaryColor,
                        size: iconSize,
                      ),
                      const SizedBox(width: 5),
                      Expanded(
                        child: Text(
                          'Delivery Charges : 0.5 KD',
                          style: TextStyle(
                            fontSize: smallFont,
                            color: kBorderColor,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 4),

                  Row(
                    children: [
                      Text(
                        'Open',
                        style: TextStyle(
                          color: kOpenGreenColor,
                          fontSize: smallFont,
                        ),
                      ),
                      const SizedBox(width: 8),

                      Text(
                        'Beverages',
                        style: TextStyle(
                          color: kFoodNameColor,
                          fontSize: smallFont,
                        ),
                      ),

                      const Spacer(),

                      Text(
                        '2.5 Km',
                        style: TextStyle(
                          fontSize: smallFont,
                          color: kPrimaryColor,
                        ),
                      ),
                      Icon(
                        Icons.location_on_outlined,
                        color: kPrimaryColor,
                        size: iconSize - 5,
                      ),
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
