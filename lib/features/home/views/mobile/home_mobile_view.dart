import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/home/views/seller_view.dart';
import 'package:fruit_app/features/home/views/widgets/custom_home_item.dart';
import 'package:fruit_app/features/home/views/widgets/filter_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class HomeMobileView extends StatelessWidget {
  const HomeMobileView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                'Fruit Market',
                style: TextStyle(
                  fontSize: 6.sp,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Spacer(),
              Icon(Icons.search, color: kPrimaryColor, size: 8.sp),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return FilterCard();
                    },
                  );
                },
                icon: Icon(Icons.filter_list, color: kPrimaryColor, size: 8.sp),
              ),
            ],
          ),
          Image.asset(
            'assets/images/home_image.png',
            width: 90.w,
            height: 20.h,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomHomeItem(imagePath: 'assets/images/resturants.png'),
              CustomHomeItem(imagePath: 'assets/images/farm.png'),
              CustomHomeItem(imagePath: 'assets/images/coffe.png'),
              CustomHomeItem(imagePath: 'assets/images/pharmacy.png'),
            ],
          ),
          Row(
            children: [
              Text(
                'Sellers',
                style: TextStyle(fontSize: 3.5.sp, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CustomTextButton(text: 'Show all', destination: Container()),
            ],
          ),
          Expanded(
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
        ],
      ),
    );
  }
}
