
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class BasketProductItem extends StatelessWidget {
  const BasketProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.15,
      child: Card(
        color: Colors.white,
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
                    borderRadius: BorderRadiusGeometry.circular(
                      kDefBorderRaduis,
                    ),
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
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '12.00 KD',
                        style: TextStyle(fontSize: 14, color: kBorderColor),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
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
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.delete_forever_outlined, size: 30),
    
                  Card(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(
                        kDefBorderRaduis,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.remove),
                        ),
                        Text('2'),
                        IconButton(onPressed: () {}, icon: Icon(Icons.add)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
