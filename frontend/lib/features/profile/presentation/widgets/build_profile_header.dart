import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text.dart';
import '../../../dashboard/domain/entity/dashboard_entity.dart';

class BuildProfileHeader extends StatelessWidget {
  const BuildProfileHeader({super.key, required this.entity});

  final EmployeeEntity entity;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 50,
          child: AppText(entity.fullName[0], variant: TextVariant.h1),
        ),
        const SizedBox(height: 16),
        AppText(entity.fullName, variant: TextVariant.h2),
        const SizedBox(height: 4),
        AppText(entity.role),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: entity.isActiveUser
                ? Colors.green.withValues(alpha: 0.1)
                : Colors.red.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: AppText(
            entity.isActiveUser ? 'Active' : 'Inactive',
            variant: TextVariant.caption,
            color: entity.isActiveUser ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }
}
