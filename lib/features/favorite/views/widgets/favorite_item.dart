import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class FavoriteItem extends StatelessWidget {
  const FavoriteItem({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final bool isWeb = width > 600;

    final double cardHeight = isWeb ? 180 : 15.h;
    final double imageRadius = isWeb ? 50 : 10.w;
    final double titleFont = isWeb ? 20 : 4.sp;
    final double priceFont = isWeb ? 16 : 3.sp;
    final double buttonRadius = isWeb ? 35 : 6.w;
    final double iconSize = isWeb ? 24 : 5.5.sp;
    
    return SizedBox(
      height: cardHeight,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kDefBorderRaduis),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefItemsPadding),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: imageRadius,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(isWeb ? 12 : 0),
                    child: Image.asset(
                      'assets/images/vegetables.png',
                      width: isWeb ? 80 : 13.w,
                      height: isWeb ? 80 : 13.w,
                    ),
                  ),
                ),
              ),

              SizedBox(width: isWeb ? 20 : 3.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize: titleFont,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Row(
                      children: [
                        Text(
                          '12.00 KD',
                          style: TextStyle(
                            fontSize: priceFont,
                            color: kBorderColor,
                          ),
                        ),
                        SizedBox(width: isWeb ? 20 : 5.w),
                        Text(
                          '14.00 KD',
                          style: TextStyle(
                            fontSize: priceFont,
                            color: Colors.grey.shade400,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(
                      

                      child: Text(
                        'Store Name: Store 1',
                        style: TextStyle(
                          fontSize: priceFont,
                          fontWeight: FontWeight.w600,
                          color: kBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {},
                child: CircleAvatar(
                  radius: buttonRadius,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.delete_outline_rounded,
                    size: iconSize,
                    color: kBorderColor,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
