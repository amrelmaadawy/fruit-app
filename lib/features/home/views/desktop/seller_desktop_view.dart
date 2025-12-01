import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/home/views/widgets/custom_category_item.dart';
import 'package:fruit_app/features/home/views/widgets/product_item_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class SellerDesktopView extends StatelessWidget {
  const SellerDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fruit Market',
            style: TextStyle(
              fontSize: 42,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.black),
              iconSize: 50,
            ),
          ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 210,
                    child: SellerItem(),
                  ),
                  Text(
                    'Categories',
                    style: TextStyle(
                      color: kBlackColor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 210,
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Products',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      Icon(
                        Icons.expand_more_outlined,
                        size: 50,
                        color: kBlackColor,
                      ),
                    ],
                  ),

                  Expanded(
                    child: ListView.separated(
                      itemCount: 5,
                      separatorBuilder: (context, index) =>
                          SizedBox(height: 1.sp),
                      itemBuilder: (context, index) {
                        return ProductItemCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
