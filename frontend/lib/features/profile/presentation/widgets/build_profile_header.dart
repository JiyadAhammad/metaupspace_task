import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_text.dart';

class BuildProfileHeader extends StatelessWidget {
  const BuildProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(radius: 50, child: AppText('A', variant: TextVariant.h1)),
        const SizedBox(height: 16),
        Text(
          'Alex Johnson',
          style: Theme.of(
            context,
          ).textTheme.headlineMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 4),
        Text(
          'Software Engineer',
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
            color: Theme.of(
              context,
            ).colorScheme.onSurface.withValues(alpha: 0.6),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.green.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Text(
            'Active',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}
