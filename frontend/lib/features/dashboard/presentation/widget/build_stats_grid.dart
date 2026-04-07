import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/dashboard_entity.dart';

class BuildStatsGrid extends StatelessWidget {
  const BuildStatsGrid({
    super.key,
    required this.crossAxisCount,
    required this.entity,
  });
  final DashboardEntity entity;
  final int crossAxisCount;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 2.1,
      children: <Widget>[
        _StatCard(
          title: 'Attendance',
          value:
              '${entity.attendance.totalWorkingDays == 0 ? 0 : ((entity.attendance.presentDays / entity.attendance.totalWorkingDays) * 100).toInt()}%',
          icon: Icons.check_circle_outline,
          color: Colors.green,
        ),
        _StatCard(
          title: 'Leaves Taken',
          value: '${entity.attendance.absentDays} Days',
          icon: Icons.date_range,
          color: Colors.orange,
        ),
        _StatCard(
          title: 'Average Working hours',
          value: '${entity.attendance.averageWorkingHours} hrs',
          icon: Icons.pending_actions,
          color: Colors.blue,
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  const _StatCard({
    required this.title,
    required this.value,
    required this.icon,
    required this.color,
  });
  final String title;
  final String value;
  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          spacing: 12,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: color, size: 28),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  AppText(title, maxLines: 1, overflow: TextOverflow.ellipsis),
                  AppText(value, variant: TextVariant.h2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
