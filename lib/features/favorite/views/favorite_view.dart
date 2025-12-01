import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';
import 'package:fruit_app/core/utils/app_colors.dart';

import 'package:fruit_app/features/favorite/views/widgets/favorite_item.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Favorite View',
          style: TextStyle(
            fontSize: 5.sp,
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return FavoriteItem();
            },
          ),
        ),
      ],
    );
  }
}
