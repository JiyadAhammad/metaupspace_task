import 'package:flutter/material.dart';

import '../../../../core/utils/ui/greeting_util.dart';
import '../../../../core/widgets/custom_text.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key, required this.name, required this.role});
  final String name;
  final String role;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CircleAvatar(
          radius: 28,
          child: AppText(name[0], variant: TextVariant.h1),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AppText(
                '${GreetingUtil.getGreeting()}, $name!',
                variant: TextVariant.h1,
              ),
              const SizedBox(height: 4),
              AppText(role, variant: TextVariant.h3),
            ],
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded),
          style: IconButton.styleFrom(
            backgroundColor: Theme.of(context).colorScheme.surface,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
              side: BorderSide(color: Theme.of(context).dividerColor),
            ),
          ),
        ),
      ],
    );
  }
}
