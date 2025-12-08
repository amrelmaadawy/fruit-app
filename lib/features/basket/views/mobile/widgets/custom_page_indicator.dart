import 'package:flutter/material.dart';
import 'package:fruit_app/core/responsive/size_config.dart';

class OrderPageIndicator extends StatelessWidget {
  final int currentStep;
  final Function(int)? onStepTap;

  const OrderPageIndicator({super.key, this.currentStep = 0, this.onStepTap});

  @override
  Widget build(BuildContext context) {
    final bool isLandscape =
        MediaQuery.of(context).orientation == Orientation.landscape;
    final List<String> steps = ['Delivery Time', 'Delivery Address', 'Payment'];

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      child: Row(
        children: List.generate(steps.length * 2 - 1, (index) {
          if (index.isOdd) {
            // Line between steps
            int stepIndex = index ~/ 2;
            return Expanded(
              child: Container(
                height: 2,
                color: currentStep > stepIndex
                    ? Colors.green
                    : Colors.grey.shade300,
              ),
            );
          } else {
            // Step indicator
            int stepIndex = index ~/ 2;
            bool isCompleted = currentStep > stepIndex;
            bool isCurrent = currentStep == stepIndex;

            return GestureDetector(
              onTap: onStepTap != null ? () => onStepTap!(stepIndex) : null,
              child: Column(
                children: [
                  Container(
                    width: isLandscape ? 5.w : 40,
                    height: isLandscape ? 10.h : 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: isCompleted || isCurrent
                          ? Colors.green
                          : Colors.white,
                      border: Border.all(
                        color: isCompleted || isCurrent
                            ? Colors.green
                            : Colors.grey.shade300,
                        width: 2,
                      ),
                    ),
                    child: isCompleted
                        ? Icon(
                            Icons.check,
                            color: Colors.white,
                            size: isLandscape ? 3.sp : 20,
                          )
                        : isCurrent
                        ? Container(
                            margin: const EdgeInsets.all(8),
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                            ),
                          )
                        : null,
                  ),
                  SizedBox(height: isLandscape ? 2.h : 8),
                  Text(
                    steps[stepIndex],
                    style: TextStyle(
                      fontSize: isLandscape ? 1.5.sp : 12,
                      fontWeight: isCurrent
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isCompleted || isCurrent
                          ? Colors.black
                          : Colors.grey.shade600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            );
          }
        }),
      ),
    );
  }
}
