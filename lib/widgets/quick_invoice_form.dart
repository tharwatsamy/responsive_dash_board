import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_button.dart';
import 'package:responsive_dash_board/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Customer name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                  title: 'Customer Email', hint: 'Type customer email'),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
                child: TitleTextField(
                    title: 'Item name', hint: 'Type customer name')),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(title: 'Item mount', hint: 'USD'),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(),
            ),
          ],
        )
      ],
    );
  }
}
