import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/payslip_entity.dart';

class PayslipItemCard extends StatelessWidget {
  const PayslipItemCard({super.key, required this.payslipItem});

  final PaySlipItemEntity payslipItem;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 12,
        ),
        leading: Container(
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor.withValues(alpha: 0.1),
            shape: BoxShape.circle,
          ),
          child: Icon(
            Icons.receipt_long,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: AppText(payslipItem.month, variant: TextVariant.large),
        subtitle: Row(
          children: <Widget>[
            AppText('ID: PAY-${payslipItem.id} ', variant: TextVariant.small),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: payslipItem.status.toLowerCase() == 'paid'
                    ? Colors.green.withAlpha(70)
                    : Colors.red.withAlpha(70),
                borderRadius: BorderRadius.circular(20),
              ),
              child: AppText(
                '• Status: ${payslipItem.status}',
                variant: TextVariant.small,
              ),
            ),
          ],
        ),
        trailing: AppText(
          '₹${payslipItem.totalSalary.toStringAsFixed(2)}',
          variant: TextVariant.large,
        ),
      ),
    );
  }
}
