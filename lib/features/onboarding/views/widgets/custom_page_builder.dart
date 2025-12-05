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
    return OrientationBuilder(
      builder: (context, orientation) {
        bool isPortrait = orientation == Orientation.portrait;

        return LayoutBuilder(
          builder: (context, constraints) {
            double width = constraints.maxWidth;

            bool isMobile = width < 600;
            bool isTablet = width >= 600 && width < 1024;

            double imageWidth = isPortrait
                ? (isMobile
                    ? width * 0.7
                    : isTablet
                        ? width * 0.5
                        : width * 0.35)
                : width * 0.45; // في اللاندسكيب تصغير بسيط

            return Center(
              child: ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// الصورة في الأعلى
                    Flexible(
                      flex: isPortrait ? 4 : 5,
                      child: Image.asset(
                        'assets/images/onboarding.png',
                        width: imageWidth,
                        fit: BoxFit.contain,
                      ),
                    ),

                    SizedBox(height: isPortrait ? 20 : 10),

                    /// Title
                    Flexible(
                      flex: 2,
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: const Color(0xff2F2E41),
                          fontSize: isMobile
                              ? 22
                              : isTablet
                                  ? 26
                                  : 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                    SizedBox(height: isPortrait ? 10 : 5),

                    /// Subtitle
                    Flexible(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Text(
                          subTitle,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: const Color(0xff78787C),
                            fontSize: isMobile
                                ? 17
                                : isTablet
                                    ? 20
                                    : 22,
                          ),
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
    );
  }
}
