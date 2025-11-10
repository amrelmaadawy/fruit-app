import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class ProductItemMobileView extends StatefulWidget {
  const ProductItemMobileView({super.key});

  @override
  State<ProductItemMobileView> createState() => _ProductItemMobileViewState();
}

class _ProductItemMobileViewState extends State<ProductItemMobileView> {
  bool isWeightAppered = false;
  bool isAddonsAppered = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ProductName',
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
              icon: Icon(
                Icons.favorite_outline,
                fontWeight: FontWeight.w500,
                size: 30,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.ios_share_outlined,
                fontWeight: FontWeight.w500,
                size: 30,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(kDefHomePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset('assets/images/productNameCover.png'),

                  Positioned(
                    right: 14,
                    top: 14,
                    child: Container(
                      padding: EdgeInsets.only(right: 13, left: 13),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(kDefBorderRaduis),
                      ),
                      child: Text(
                        '10% Off Discount',
                        style: TextStyle(color: kBorderColor, fontSize: 17),
                      ),
                    ),
                  ),
                ],
              ),
              Expanded(
                flex: 1,
                child: Text(
                  'Category Name',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: kPrimaryColor,
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'KD12.00 ',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: kBorderColor,
                      ),
                    ),
                    Text(
                      ' KD14.00',
                      style: TextStyle(fontSize: 17, color: kOfferColor),
                    ),
                  ],
                ),
              ),

              Expanded(
                child: Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                  style: TextStyle(fontSize: 16, color: kBorderColor),
                ),
              ),
              Expanded(
                child: Text(
                  'Sell Per : Kartoon',
                  style: TextStyle(fontSize: 16, color: kBorderColor),
                ),
              ),

              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Weight',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isWeightAppered = !isWeightAppered;
                          });
                        },
                        icon: Icon(Icons.expand_more_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              isWeightAppered
                  ? Expanded(
                      child: Column(
                        children: [
                          Text(
                            '50 Gram-4.00 KD',
                            style: TextStyle(fontSize: 17, color: kBorderColor),
                          ),
                          Text(
                            '50 Gram-4.00 KD',
                            style: TextStyle(fontSize: 17, color: kBorderColor),
                          ),
                          Text(
                            '50 Gram-4.00 KD',
                            style: TextStyle(fontSize: 17, color: kBorderColor),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),

              Expanded(
                child: Card(
                  shape: RoundedRectangleBorder(),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Select Addons',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: kBlackColor,
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isAddonsAppered = !isAddonsAppered;
                          });
                        },
                        icon: Icon(Icons.expand_more_outlined),
                      ),
                    ],
                  ),
                ),
              ),
              isAddonsAppered
                  ? Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          Text(
                            '50 Gram-4.00 KD',
                            style: TextStyle(fontSize: 17, color: kBorderColor),
                          ),
                          Text(
                            '50 Gram-4.00 KD',
                            style: TextStyle(fontSize: 17, color: kBorderColor),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              Expanded(
                child: Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: kPrimaryColor,
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Icon(
                            Icons.shopping_basket_outlined,
                            size: 18,
                            color: Colors.white,
                          ),
                          Text(
                            'Add To Cart',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
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
