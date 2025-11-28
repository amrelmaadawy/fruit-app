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
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              Spacer(),
              Icon(Icons.search, color: kPrimaryColor, size: 30),
              IconButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return FilterCard();
                    },
                  );
                },
                icon: Icon(Icons.filter_list, color: kPrimaryColor, size: 30),
              ),
            ],
          ),
          Image.asset('assets/images/home_image.png'),
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
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              CustomTextButton(text: 'Show all', destination: Container()),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: 3,
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
                return SizedBox(height: 10);
              },
            ),
          ),
        ],
      ),
    );
  }
}
