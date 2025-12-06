import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/seller_view.dart';
import 'package:fruit_app/features/home/views/widgets/custom_home_item.dart';
import 'package:fruit_app/features/home/views/widgets/filter_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class HomeMobileLandscapeView extends StatelessWidget {
  const HomeMobileLandscapeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 40.w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Fruit Market',
                    style: TextStyle(
                      fontSize: 3.sp,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.search, color: kPrimaryColor, size: 4.sp),
                  IconButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return FilterCard();
                        },
                      );
                    },
                    icon: Icon(
                      Icons.filter_list,
                      color: kPrimaryColor,
                      size: 4.sp,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5.h),
              Image.asset(
                'assets/images/home_image.png',
                width: 40.w,
                height: 20.h,
              ),
              SizedBox(height: 5.h),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomHomeItem(imagePath: 'assets/images/resturants.png'),
                  CustomHomeItem(imagePath: 'assets/images/farm.png'),
                  CustomHomeItem(imagePath: 'assets/images/coffe.png'),
                  CustomHomeItem(imagePath: 'assets/images/pharmacy.png'),
                ],
              ),
            ],
          ),
        ),

        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(kDefHomePadding),
            child: ListView.separated(
              itemCount: 10,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SellerView()),
                    );
                  },
                  child: SellerItem(),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 2.h);
              },
            ),
          ),
        ),
      ],
    );
  }
}
