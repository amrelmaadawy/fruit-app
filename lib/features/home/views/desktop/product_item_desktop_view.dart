import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/widgets/custom_select_weight_row.dart';

class ProductItemDesktopView extends StatefulWidget {
  const ProductItemDesktopView({super.key});

  @override
  State<ProductItemDesktopView> createState() => _ProductItemDesktopViewState();
}

class _ProductItemDesktopViewState extends State<ProductItemDesktopView> {
  bool isWeightAppered = false;
  bool isAddonsAppered = false;
  String? selectedWeight = '50g';
  String? selectedAddons = '50g';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'ProductName',
            style: TextStyle(
              fontSize:42,
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
              Padding(
                padding: const EdgeInsets.only(bottom: 5),
                child: Stack(
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
                          style: TextStyle(
                            color: kBorderColor,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                'Category Name',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize:25,
                        fontWeight: FontWeight.bold,
                        color: kBlackColor,
                      ),
                    ),
                  ),

                  Text(
                    'KD12.00 ',
                    style: TextStyle(
                      fontSize: 2.8.sp,
                      fontWeight: FontWeight.bold,
                      color: kBorderColor,
                    ),
                  ),
                  Text(
                    ' KD14.00',
                    style: TextStyle(fontSize: 2.8.sp, color: kOfferColor),
                  ),
                ],
              ),

              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ',
                style: TextStyle(fontSize: 3.sp, color: kBorderColor),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 5, bottom: 5),
                child: Text(
                  'Sell Per : Kartoon',
                  style: TextStyle(fontSize: 3.sp, color: kBorderColor),
                ),
              ),

              CustomSelectWeightRow(
                onTap: () {
                  setState(() {
                    isWeightAppered = !isWeightAppered;
                  });
                },
                title: 'Select Weight',
              ),
              isWeightAppered
                  ? RadioGroup<String>(
                      onChanged: (value) {
                        setState(() {
                          selectedWeight = value;
                        });
                      },
                      groupValue: selectedWeight,
                      child: Column(
                        children: [
                          RadioMenuButton<String>(
                            value: '50g',
                            groupValue: selectedWeight,
                            onChanged: (String? value) {
                              setState(() {
                                selectedWeight = value;
                              });
                            },
                            child: Text(
                              '50 Gram - 4.00 KD',
                              style: TextStyle(fontSize: 3.sp),
                            ),
                          ),
                          RadioMenuButton<String>(
                            value: '100g',
                            groupValue: selectedWeight,
                            onChanged: (String? value) {
                              setState(() {
                                selectedWeight = value;
                              });
                            },
                            child: Text(
                              '100 Gram - 7.50 KD',
                              style: TextStyle(fontSize: 3.sp),
                            ),
                          ),
                          RadioMenuButton<String>(
                            value: '200g',
                            groupValue: selectedWeight,
                            onChanged: (String? value) {
                              setState(() {
                                selectedWeight = value;
                              });
                            },
                            child: Text(
                              '200 Gram - 7.50 KD',
                              style: TextStyle(fontSize: 3.sp),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),

              CustomSelectWeightRow(
                onTap: () {
                  setState(() {
                    isAddonsAppered = !isAddonsAppered;
                  });
                },
                title: 'Select Addons',
              ),
              isAddonsAppered
                  ? RadioGroup<String>(
                      onChanged: (value) {
                        setState(() {
                          selectedAddons = value;
                        });
                      },
                      groupValue: selectedAddons,
                      child: Column(
                        children: [
                          RadioMenuButton<String>(
                            value: '50g',
                            groupValue: selectedAddons,
                            onChanged: (String? value) {
                              setState(() {
                                selectedAddons = value;
                              });
                            },
                            child: Text(
                              '50 Gram - 4.00 KD',
                              style: TextStyle(fontSize: 3.sp),
                            ),
                          ),
                          RadioMenuButton<String>(
                            value: '100g',
                            groupValue: selectedAddons,
                            onChanged: (String? value) {
                              setState(() {
                                selectedAddons = value;
                              });
                            },
                            child: Text(
                              '100 Gram - 7.50 KD',
                              style: TextStyle(fontSize: 3.sp),
                            ),
                          ),
                        ],
                      ),
                    )
                  : SizedBox(),
              Expanded(
                child: Align(
                  alignment: AlignmentGeometry.bottomRight,
                  child: SizedBox(
                    width: 40.w,
                    height: 5.h,
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
                            size: 4.sp,
                            color: Colors.white,
                          ),
                          Text(
                            'Add To Cart',
                            style: TextStyle(
                              fontSize: 3.sp,
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
