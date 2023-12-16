import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_dot.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) => const Padding(
          padding: EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: false),
        ),
      ),
    );
  }
}
