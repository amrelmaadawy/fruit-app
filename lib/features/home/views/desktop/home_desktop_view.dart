import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/features/home/views/seller_view.dart';
import 'package:fruit_app/features/home/views/widgets/custom_home_item.dart';
import 'package:fruit_app/features/home/views/widgets/filter_card.dart';
import 'package:fruit_app/features/home/views/widgets/seller_item.dart';

class HomeDesktopView extends StatelessWidget {
  const HomeDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2,
        title: const Text(
          "Fruit Market",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: kPrimaryColor, size: 28),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.filter_list, color: kPrimaryColor, size: 28),
            onPressed: () {
              showDialog(context: context, builder: (_) => FilterCard());
            },
          ),
          const SizedBox(width: 20),
        ],
      ),

      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(
                      'assets/images/home_image.png',
                      width: double.infinity,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),

                  const SizedBox(height: 20),

                  GridView.count(
                    crossAxisCount: 4,
                    shrinkWrap: true,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    physics: const NeverScrollableScrollPhysics(),
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
          ),

          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.all(30),
              color: Colors.grey.shade50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Sellers",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: kPrimaryColor,
                    ),
                  ),
                  const SizedBox(height: 20),

                  Expanded(
                    child: ListView.separated(
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (_) => SellerView()),
                            );
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: SellerItem(),
                          ),
                        );
                      },
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
