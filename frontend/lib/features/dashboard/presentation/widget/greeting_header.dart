import 'package:flutter/material.dart';

import '../../../../core/utils/ui/greeting_util.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/dashboard_entity.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key, required this.entity});
  final DashboardEntity entity;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 28,
          child: AppText(entity.employee.fullName[0], variant: TextVariant.h1),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppText(
                '${GreetingUtil.getGreeting()}, ${entity.employee.fullName}',
                variant: TextVariant.h1,
              ),
              const SizedBox(height: 4),
              AppText(entity.employee.role, variant: TextVariant.h3),
            ],
          ),
        ),
        // IconButton(
        //   onPressed: () {},
        //   icon: const Icon(Icons.notifications_none_rounded),
        //   style: IconButton.styleFrom(
        //     backgroundColor: Theme.of(context).colorScheme.surface,
        //     shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(12),
        //       side: BorderSide(color: Theme.of(context).dividerColor),
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
