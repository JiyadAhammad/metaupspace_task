import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/widgets/custom_text.dart';

class BuildActionPanel extends StatelessWidget {
  const BuildActionPanel({super.key});

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
                //TODO: Navigate to Apply leave page;
                context.pushNamed(AppRouteNames.applyLeave);
              },
            ),
            _BuildActionButton(
              label: 'Leave History',
              icon: Icons.history,
              onPressed: () {
                //TODO: Navigate to leave history page;
                context.pushNamed(AppRouteNames.leaveHistory);
              },
            ),

            _BuildActionButton(
              label: 'View Payslip',
              icon: Icons.receipt_long,
              onPressed: () {
                //TODO: Navigate to View Slip page;
              },
            ),

            _BuildActionButton(
              label: 'View Profile',
              icon: Icons.person_outline,
              onPressed: () {
                //TODO: Navigate to View Profile page;
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
        icon: Icon(icon),
        label: AppText(label),
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(
            context,
          ).primaryColor.withValues(alpha: 0.1),
          foregroundColor: Theme.of(context).primaryColor,
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        ),
      ),
    );
  }
}
