import 'package:flutter/material.dart';
import 'package:fruit_app/core/components/custom_elevated_button.dart';
import 'package:fruit_app/core/components/custom_text_button.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/widgets/custom_home_item.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
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
                      return AlertDialog(
                        content: SizedBox(
                          height: MediaQuery.of(context).size.height * 0.35,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: AlignmentGeometry.center,
                                child: Text(
                                  'Filter by',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Delived To ',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: kBorderColor,
                                    ),
                                  ),
                                  Icon(
                                    Icons.delivery_dining_outlined,
                                    color: kPrimaryColor,
                                  ),
                                ],
                              ),
                              PopupMenuButton<String?>(
                                child: Container(
                                  decoration: BoxDecoration(
                                    border: Border.all(color: kBorderColor),
                                    borderRadius: BorderRadius.circular(
                                      kDefBorderRaduis,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Row(
                                      children: [
                                        Icon(Icons.arrow_downward),
                                        Text('Selected Area'),
                                      ],
                                    ),
                                  ),
                                ),
                                onSelected: (value) {},
                                itemBuilder: (_) => [
                                  PopupMenuItem<String?>(
                                    value: null,
                                    child: Text('Selected Area'),
                                  ),
                                ],
                              ),
                              Text(
                                'Offers',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kBorderColor,
                                ),
                              ),
                              Text(
                                'Free Delivery',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: kBorderColor,
                                ),
                              ),
                              CustomElevatedButton(
                                onPressed: () {},
                                text: 'Apply Filter',
                              ),
                              Align(
                                alignment: AlignmentGeometry.center,
                                child: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    'Cancel',
                                    style: TextStyle(color: kBorderColor),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
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
                return Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 30,
                      child: Image.asset('assets/images/companyLogo.png'),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'Seller Name',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 19,
                                  ),
                                ),
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                  color: kBorderColor,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.delivery_dining_outlined,
                                color: kPrimaryColor,
                              ),
                              Expanded(
                                child: Text(
                                  'Delivery Charges :0.5 KD ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: kBorderColor,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Open',
                                style: TextStyle(
                                  color: kOpenGreenColor,
                                  fontSize: 15,
                                ),
                              ),
                              SizedBox(width: 10),
                              Text(
                                'Beverages',
                                style: TextStyle(
                                  color: kFoodNameColor,
                                  fontSize: 15,
                                ),
                              ),
                              Spacer(),
                              Text(
                                '2.5 Km',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: kPrimaryColor,
                                ),
                              ),
                              Icon(
                                Icons.location_on_outlined,
                                color: kPrimaryColor,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
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
