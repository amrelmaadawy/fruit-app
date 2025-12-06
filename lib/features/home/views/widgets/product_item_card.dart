import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/product_item_view.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final isLandscape = width > height;
    final bool isWeb = width > 600;

    final double cardHeight = isWeb
        ? 180
        : isLandscape
            ? 10.h
            : 15.h;

    final double imageRadius = isWeb
        ? 50
        : isLandscape
            ? 7.w
            : 10.w;

    final double titleFont = isWeb
        ? 20
        : isLandscape
            ? 3.sp
            : 4.sp;

    final double priceFont = isWeb
        ? 16
        : isLandscape
            ? 2.3.sp
            : 2.8.sp;

    final double buttonRadius = isWeb
        ? 35
        : isLandscape
            ? 4.5.w
            : 6.w;

    final double iconSize = isWeb
        ? 24
        : isLandscape
            ? 4.2.sp
            : 5.5.sp;

    final double offerHeight = isWeb
        ? 35
        : isLandscape
            ? 2.h
            : 3.h;

    final double offerWidth = isWeb
        ? 140
        : isLandscape
            ? 18.w
            : 25.w;

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

                    Container(
                      width: offerWidth,
                      height: offerHeight,
                      decoration: BoxDecoration(
                        color: kOfferColor,
                        borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      ),
                      child: Center(
                        child: Text(
                          'Up to 10 % Off',
                          style: TextStyle(
                            fontSize: priceFont,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProductItemView()),
                  );
                },
                child: CircleAvatar(
                  radius: buttonRadius,
                  backgroundColor: kPrimaryColor,
                  child: Icon(
                    Icons.add_shopping_cart_outlined,
                    size: iconSize,
                    color: Colors.white,
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
