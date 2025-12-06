import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/widgets/custom_category_item.dart';
import 'package:fruit_app/features/home/views/widgets/product_item_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class SellerMobileLandscapeView extends StatelessWidget {
  const SellerMobileLandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Fruit Market',
          style: TextStyle(
            fontSize: 3.5.sp,
            color: kPrimaryColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search_outlined, color: Colors.black),
            iconSize: 4.sp,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kDefHomePadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 40.w,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 35.h,
                    child: SellerItem(),
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 2.5.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 5.h),
                  SizedBox(
                    height: 20.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CustomCategoryItem(
                          imagepath: 'assets/images/fruits.png',
                          title: 'Fruits',
                        ),
                        CustomCategoryItem(
                          imagepath: 'assets/images/vegetables.png',
                          title: 'Vegetables',
                        ),
                        CustomCategoryItem(
                          imagepath: 'assets/images/phones.png',
                          title: 'Phones',
                        ),
                        CustomCategoryItem(
                          imagepath: 'assets/images/pets.png',
                          title: 'Pets',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 2.sp,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      Icon(
                        Icons.expand_more_outlined,
                        size: 3.sp,
                        color: kBlackColor,
                      ),
                    ],
                  ),
                        
                  Expanded(
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (context, index) => SizedBox(height: 1.sp),
                      itemBuilder: (context, index) {
                        return ProductItemCard();
                      },
                    ),
                  ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
