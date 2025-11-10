
import 'package:flutter/material.dart';
import 'package:fruit_app/core/utils/app_colors.dart';
import 'package:fruit_app/core/utils/app_size.dart';

class CustomPopMenuButton extends StatelessWidget {
  const CustomPopMenuButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String?>(
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
    );
  }
}
