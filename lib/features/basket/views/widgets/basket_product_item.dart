import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class BasketProductItem extends StatelessWidget {
  const BasketProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    return SizedBox(
      height: isLandscape ? 28.h : 18.h,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
        ),
        child: Padding(
          padding: const EdgeInsets.all(kDefItemsPadding),
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: isLandscape ? 3.sp : 10.sp,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadiusGeometry.circular(
                      kDefBorderRaduis,
                    ),
                  ),
                  child: Image.asset('assets/images/vegetables.png'),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Product Name',
                    style: TextStyle(
                      fontSize: isLandscape ? 1.5.sp : 4.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '12.00 KD',
                        style: TextStyle(
                          fontSize: isLandscape ? 1.3.sp : 3.6.sp,
                          color: kBorderColor,
                        ),
                      ),
                      SizedBox(width: isLandscape ? 1.w : 5.w),
                      Text(
                        '14.00 KD',
                        style: TextStyle(
                          fontSize: isLandscape ? 1.5.sp : 4.sp,
                          color: Colors.grey.shade400,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 7, left: 7),
                    decoration: BoxDecoration(
                      color: kOfferColor,
                      borderRadius: BorderRadius.circular(kDefBorderRaduis),
                    ),
                    child: Text(
                      'Up to 10 % Off',
                      style: TextStyle(
                        fontSize: isLandscape ? 1.2.sp : 3.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.delete_forever_outlined,
                    size: isLandscape ? 3.sp : 5.5.sp,
                  ),

                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(
                        kDefBorderRaduis,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.remove,
                            size: isLandscape ? 2.sp : 5.5.sp,
                          ),
                        ),
                        Text(
                          '2',
                          style: TextStyle(
                            fontSize: isLandscape ? 1.8.sp : 3.sp,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.add,
                            size: isLandscape ? 2.sp : 5.5.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
