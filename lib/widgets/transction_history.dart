import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TrasnctionHistory extends StatelessWidget {
  const TrasnctionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Transaction History',
              style: AppStyles.styleSemiBold20,
            ),
            Text(
              'See all',
              style: AppStyles.styleMedium16.copyWith(
                color: const Color(0xFF4EB7F2),
              ),
            )
          ],
        ),
      ],
    );
  }
}
