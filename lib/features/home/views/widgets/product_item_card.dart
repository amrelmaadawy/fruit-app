import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';
import 'package:fruit_app/features/home/views/product_item_view.dart';

class ProductItemCard extends StatelessWidget {
  const ProductItemCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
      ),
      child: Padding(
        padding: const EdgeInsets.all(kDefItemsPadding),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: MediaQuery.of(context).size.width * 0.1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(kDefBorderRaduis),
                ),
                child: Image.asset('assets/images/vegetables.png'),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Product Name',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    Text(
                      '12.00 KD',
                      style: TextStyle(fontSize: 14, color: kBorderColor),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.05),
                    Text(
                      '14.00 KD',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(right: 7, left: 7),
                  decoration: BoxDecoration(
                    color: kOfferColor,
                    borderRadius: BorderRadius.circular(kDefBorderRaduis),
                  ),
                  child: Text(
                    'Up to 10 % Off',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductItemView()),
                );
              },
              child: CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.06,
                backgroundColor: kPrimaryColor,
                child: Icon(
                  size: 25,
                  Icons.add_shopping_cart_outlined,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
