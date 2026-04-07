import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/leave_application_entity.dart';
import '../bloc/leave_application_bloc.dart';
import '../widgets/applied_leave_card.dart';
import '../widgets/leave_list_shimmer.dart';

class LeaveHistoryScreen extends StatefulWidget {
  const LeaveHistoryScreen({super.key});

  @override
  State<LeaveHistoryScreen> createState() => _LeaveHistoryScreenState();
}

class _LeaveHistoryScreenState extends State<LeaveHistoryScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LeaveApplicationBloc>().add(
        const LeaveApplicationEvent.getAllLeaveApplications(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Leave History'),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 800),
          padding: const EdgeInsets.all(24.0),
          child: BlocBuilder<LeaveApplicationBloc, LeaveApplicationState>(
            builder: (BuildContext context, LeaveApplicationState state) {
              if (state.isLoading) {
                return const LeaveListShimmer();
              }
              if (state.isError) {
                return _ErrorWidget(
                  errorMessage:
                      state.errorMessage ??
                      'Error fetching LeaveApplication list',
                );
              }
              if (state.leaveApplications.isEmpty) {
                return const _ErrorWidget(
                  errorMessage: 'No Leave Application Yet',
                );
              }
              final List<LeaveApplicationEntity> appliedLeaved =
                  state.leaveApplications;
              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  AppText('Applied Leaves (${appliedLeaved.length})'),
                  const SizedBox(height: 24),
                  Expanded(
                    child: ListView.separated(
                      itemCount: appliedLeaved.length,
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(height: 16),
                      itemBuilder: (BuildContext context, int index) {
                        final LeaveApplicationEntity leave =
                            appliedLeaved[index];
                        return AppliedLeaveCard(leave: leave);
                      },
                    ),
                  ),
                ],
              );
            },
          ),
        ),
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
