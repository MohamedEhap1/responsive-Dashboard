import 'package:flutter/material.dart';
import 'package:responsive_dashboard/views/widgets/custom_button.dart';
import 'package:responsive_dashboard/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      spacing: 24,
      children: [
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer Name',
                hintText: 'Type customer name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        Row(
          spacing: 16,
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item Name',
                hintText: 'Type item name',
              ),
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        Row(
          spacing: 24,
          children: [
            Expanded(
                child: CustomButton(
              text: 'Add more details',
              backgroundColor: Colors.white,
              textColor: Color(0xff4EB7F2),
            )),
            Expanded(
                child: CustomButton(
              text: 'Send Money',
            )),
          ],
        ),
      ],
    );
  }
}
