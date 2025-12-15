import 'package:flutter/material.dart';

class OrderTimelineWidget extends StatelessWidget {
  const OrderTimelineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final List<TimelineStep> steps = [
      TimelineStep(
        title: 'Order Placed',
        subtitle: 'We have received your order',
        isCompleted: true,
      ),
      TimelineStep(
        title: 'Confirmed',
        subtitle: 'Your order has been confirmed',
        isCompleted: true,
      ),
      TimelineStep(
        title: 'Order shipped',
        subtitle: 'Estimated for 10 September, 2021',
        isCompleted: true,
        isCurrent: true,
      ),
      TimelineStep(
        title: 'Out for delivery',
        subtitle: 'Estimated for 10 September, 2021',
        isCompleted: false,
      ),
      TimelineStep(
        title: 'Delivered',
        subtitle: 'Estimated for 10 September, 2021',
        isCompleted: false,
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          ...List.generate(steps.length, (index) {
            return _buildTimelineItem(
              step: steps[index],
              isFirst: index == 0,
              isLast: index == steps.length - 1,
            );
          }),
        ],
      ),
    );
  }

  Widget _buildTimelineItem({
    required TimelineStep step,
    required bool isFirst,
    required bool isLast,
  }) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: step.isCompleted ? Colors.green : Colors.white,
                  border: Border.all(
                    color: step.isCompleted
                        ? Colors.green
                        : Colors.grey.shade300,
                    width: 2,
                  ),
                ),
                child: step.isCompleted
                    ? const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 14,
                      )
                    : null,
              ),
              if (!isLast)
                Expanded(
                  child: Container(
                    width: 2,
                    color: step.isCompleted
                        ? Colors.green
                        : Colors.grey.shade300,
                    margin: const EdgeInsets.symmetric(vertical: 4),
                  ),
                ),
            ],
          ),
          const SizedBox(width: 16),
          // Content
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: isLast ? 0 : 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    step.title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: step.isCurrent ? Colors.black : Colors.grey.shade800,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    step.subtitle,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade600,
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

class TimelineStep {
  final String title;
  final String subtitle;
  final bool isCompleted;
  final bool isCurrent;

  TimelineStep({
    required this.title,
    required this.subtitle,
    required this.isCompleted,
    this.isCurrent = false,
  });
}