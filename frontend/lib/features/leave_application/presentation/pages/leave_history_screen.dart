import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constants/app_const.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../bloc/leave_application_bloc.dart';

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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const AppText('Applied Leaves'),
              const SizedBox(height: 24),
              Expanded(
                child: ListView.separated(
                  itemCount: 4,
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(height: 16),
                  itemBuilder: (BuildContext context, int index) {
                    final Map<String, Object> leave = AppConst.leaves[index];
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
                            Icons.beach_access,
                            color: Theme.of(context).primaryColor,
                          ),
                        ),
                        title: AppText(leave['type']! as String),
                        subtitle: AppText(leave['dates']! as String),
                        trailing: Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 6,
                          ),
                          decoration: BoxDecoration(
                            color: (leave['color']! as Color).withValues(
                              alpha: 0.1,
                            ),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: AppText(
                            leave['status']! as String,
                            color: leave['color']! as Color,
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
      ),
    );
  }
}
