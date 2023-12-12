import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/custom_text_field.dart';
import 'package:responsive_dash_board/widgets/latest_transction.dart';
import 'package:responsive_dash_board/widgets/latest_transction_list_view.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
      children: [
        QuickInvoiceHeader(),
        LatestTransction(),
        Divider(
          height: 48,
        ),
        CustomTextField()
      ],
    ));
  }
}
