import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/widgets/custom_category_item.dart';
import 'package:fruit_app/features/home/views/widgets/product_item_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class SellerMobileView extends StatelessWidget {
  const SellerMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Fruit Market',
            style: TextStyle(
              fontSize: 24,
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.black),
              iconSize: 30,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(kDefHomePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(flex: 2, child: SellerItem()),
              Text(
                'Categories',
                style: TextStyle(
                  color: kBlackColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                flex: 2,
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
              Expanded(
                flex: 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    Icon(
                      Icons.expand_more_outlined,
                      size: 25,
                      color: kBlackColor,
                    ),
                  ],
                ),
              ),

              Expanded(
                flex: 7,
                child: ListView.separated(
                  itemCount: 5,
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemBuilder: (context, index) {
                    return ProductItemCard();
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
