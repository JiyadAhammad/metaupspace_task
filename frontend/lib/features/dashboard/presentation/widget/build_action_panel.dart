import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/dashboard_entity.dart';

class BuildActionPanel extends StatelessWidget {
  const BuildActionPanel({super.key, required this.entity});

  final DashboardEntity entity;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: .start,
          spacing: 12,
          children: <Widget>[
            const AppText('Quick Actions', variant: TextVariant.h3),
            const SizedBox(height: 8),
            _BuildActionButton(
              label: 'Apply Leave',
              icon: Icons.add,
              onPressed: () {
                context.pushNamed(AppRouteNames.applyLeave);
              },
            ),
            _BuildActionButton(
              label: 'Leave History',
              icon: Icons.history,
              onPressed: () {
                context.pushNamed(AppRouteNames.leaveHistory);
              },
            ),

            _BuildActionButton(
              label: 'View Payslip',
              icon: Icons.receipt_long,
              onPressed: () {
                context.pushNamed(AppRouteNames.paySlip);
              },
            ),

            _BuildActionButton(
              label: 'View Profile',
              icon: Icons.person_outline,
              onPressed: () {
                context.pushNamed(AppRouteNames.profile, extra: entity);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _BuildActionButton extends StatelessWidget {
  const _BuildActionButton({
    required this.label,
    required this.icon,
    required this.onPressed,
  });

  final String label;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon, color: Colors.white),
        label: AppText(label, variant: TextVariant.small, color: Colors.white),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      ),
    );
  }
}
