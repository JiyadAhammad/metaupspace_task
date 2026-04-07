import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/payslip_entity.dart';
import '../bloc/payslip_bloc.dart';
import '../widgets/payslip_item_widget.dart';
import '../widgets/payslip_shimmer.dart';

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
            return const PayslipShimmer();
          }
          if (state.isError) {
            return _ErrorWidget(
              errorMessage: state.errorMessage ?? 'Error fetching Payslip list',
            );
          }
          if (state.payslip == null) {
            return const _ErrorWidget(
              errorMessage: 'Error fetching Payslip list',
            );
          }
          if (state.payslip!.payslips.isEmpty) {
            return const _ErrorWidget(
              errorMessage: 'No payslip available, you joined this month.',
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
                      const AppText('Recent Payslips', variant: TextVariant.h3),
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
                          variant: TextVariant.large,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: AppText(
                            'Showing ${payslip.payslips.length} payslip${payslip.payslips.length > 1 ? 's' : ''}',
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

                              return PayslipItemCard(payslipItem: payslipItem);
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

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
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
          AppText(errorMessage, variant: TextVariant.h3),
        ],
      ),
    );
  }
}
