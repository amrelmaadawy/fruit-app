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
    return LayoutBuilder(
      builder: (context, constraints) {
        final double width = constraints.maxWidth;

        bool isMobile = width < 600;
        bool isTablet = width >= 600 && width < 1024;

        double imageWidth = isMobile
            ? width * 0.7
            : isTablet
                ? width * 0.5
                : width * 0.3;

        double titleSize = isMobile
            ? 22
            : isTablet
                ? 26
                : 32;

        double subTitleSize = isMobile
            ? 17
            : isTablet
                ? 20
                : 22;

        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: imageWidth,
                child: Image.asset('assets/images/onboarding.png'),
              ),
              const SizedBox(height: 20),
              Text(
                title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xff2F2E41),
                  fontSize: titleSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: isMobile ? width * 0.8 : width * 0.6,
                child: Text(
                  subTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: const Color(0xff78787C),
                    fontSize: subTitleSize,
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
