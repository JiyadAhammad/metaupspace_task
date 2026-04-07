import 'package:flutter/material.dart';

import '../../../../core/extension/date_extension.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/leave_application_entity.dart';

class AppliedLeaveCard extends StatelessWidget {
  const AppliedLeaveCard({super.key, required this.leave});

  final LeaveApplicationEntity leave;

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
            Icons.time_to_leave,
            color: Theme.of(context).primaryColor,
          ),
        ),
        title: AppText(leave.type),
        subtitle: AppText(
          '${leave.startDate.toDMY()} - ${leave.endDate.toDMY()}',
        ),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: (leave.status ? Colors.green : Colors.red).withValues(
              alpha: 0.1,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: AppText(
            leave.status ? 'Approved' : 'Rejected',
            color: leave.status ? Colors.green : Colors.red,
          ),
        ),
      ),
    );
  }
}
