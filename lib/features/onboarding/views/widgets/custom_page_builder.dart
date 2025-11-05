import 'package:flutter/material.dart';

class CustomPageBuilder extends StatelessWidget {
  const CustomPageBuilder({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            child: Image.asset('assets/images/onboarding.png'),
          ),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff2F2E41),
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            subTitle,
            style: TextStyle(color: Color(0xff78787C), fontSize: 17),
          ),
        ],
      ),
    );
  }
}
