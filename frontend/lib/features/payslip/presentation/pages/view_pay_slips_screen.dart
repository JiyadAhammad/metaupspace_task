import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/payslip_entity.dart';
import '../bloc/payslip_bloc.dart';

class ViewPaySlipsScreen extends StatefulWidget {
  const ViewPaySlipsScreen({super.key});

  @override
  State<ViewPaySlipsScreen> createState() => _ViewPaySlipsScreenState();
}

class _ViewPaySlipsScreenState extends State<ViewPaySlipsScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((Duration timeStamp) {
      context.read<PayslipBloc>().add(const PayslipEvent.getPayslipData());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Payslips'),
      body: BlocBuilder<PayslipBloc, PayslipState>(
        builder: (BuildContext context, PayslipState state) {
          if (state.isLoading) {
            // TODO: Add Shimer here
            return const SizedBox();
          }
          if (state.isError) {
            return Center(child: AppText(state.errorMessage ?? ''));
          }
          if (state.payslip == null) {
            return const Center(child: AppText('Error fetching Payslip list'));
          }
          if (state.payslip!.payslips.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: .center,
                children: <Widget>[
                  Icon(
                    Icons.receipt_long,
                    size: 64,
                    color: Colors.grey.withValues(alpha: 0.5),
                  ),
                  const SizedBox(height: 16),
                  const AppText(
                    'No payslip available, you joined this month.',
                    variant: TextVariant.h3,
                  ),
                ],
              ),
            );
          }
          final PaySlipEntity payslip = state.payslip!;

          return Center(
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
                        child: AppText(
                          'Base: ₹${payslip.baseSalary.toStringAsFixed(2)}/month',
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
                          child: AppText(
                            'Showing 4 payslip${4 > 1 ? 's' : ''}',
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: payslip.payslips.length,
                            separatorBuilder:
                                (BuildContext context, int index) =>
                                    const SizedBox(height: 16),
                            itemBuilder: (BuildContext context, int index) {
                              final PaySlipItemEntity payslipItem =
                                  payslip.payslips[index];

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
                                  title: AppText(payslipItem.month),
                                  subtitle: AppText(
                                    'ID: PAY-${payslipItem.id} • Status: ${payslipItem.status}',
                                  ),
                                  trailing: AppText(
                                    '₹${payslipItem.totalSalary.toStringAsFixed(2)}',
                                  ),
                                  // trailing: ElevatedButton.icon(
                                  //   onPressed: () {
                                  //     ScaffoldMessenger.of(
                                  //       context,
                                  //     ).showSnackBar(
                                  //       const SnackBar(
                                  //         content: Text(
                                  //           'Downloading  Payslip...',
                                  //         ),
                                  //         behavior: SnackBarBehavior.floating,
                                  //       ),
                                  //     );
                                  //   },
                                  //   icon: const Icon(
                                  //     Icons.download_rounded,
                                  //     size: 18,
                                  //   ),
                                  //   label: const Text('Download'),
                                  //   style: ElevatedButton.styleFrom(
                                  //     padding: const EdgeInsets.symmetric(
                                  //       horizontal: 16,
                                  //       vertical: 12,
                                  //     ),
                                  //   ),
                                  // ),
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
          );
        },
      ),
    );
  }
}
