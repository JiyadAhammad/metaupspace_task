import 'package:flutter/material.dart';

import '../../../../core/constants/app_const.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';

class ViewPaySlipsScreen extends StatelessWidget {
  const ViewPaySlipsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Payslips'),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: .spaceBetween,
                children: <Widget>[
                  const AppText('Recent Payslips'),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).primaryColor.withValues(alpha: 0.1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Base: \$${5000.0.toStringAsFixed(0)}/mo',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.only(bottom: 16.0),
                      child: AppText('Showing 4 payslip${4 > 1 ? 's' : ''}'),
                    ),
                    Expanded(
                      child: ListView.separated(
                        itemCount: 6,
                        separatorBuilder: (BuildContext context, int index) =>
                            const SizedBox(height: 16),
                        itemBuilder: (BuildContext context, int index) {
                          final String month = AppConst.paySlip[index];
                          return Card(
                            child: ListTile(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 24,
                                vertical: 12,
                              ),
                              leading: Container(
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  color: Theme.of(
                                    context,
                                  ).primaryColor.withValues(alpha: 0.1),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.receipt_long,
                                  color: Theme.of(context).primaryColor,
                                ),
                              ),
                              title: Row(
                                mainAxisAlignment: .spaceBetween,
                                children: <Widget>[
                                  AppText(month),
                                  AppText('\$${8000.toStringAsFixed(2)}'),
                                ],
                              ),
                              subtitle: AppText(
                                'ID: PAY-${1000 - index} • Status: Processed',
                              ),
                              trailing: ElevatedButton.icon(
                                onPressed: () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                      content: Text(
                                        'Downloading $month Payslip...',
                                      ),
                                      behavior: SnackBarBehavior.floating,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.download_rounded,
                                  size: 18,
                                ),
                                label: const Text('Download'),
                                style: ElevatedButton.styleFrom(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 16,
                                    vertical: 12,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
