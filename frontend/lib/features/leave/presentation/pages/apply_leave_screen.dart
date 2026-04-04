import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../../core/widgets/custom_text_field.dart';

class ApplyLeaveScreen extends StatelessWidget {
  const ApplyLeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'Apply leave'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const AppText('Leave Application'),
                    const SizedBox(height: 24),
                    const CustomTextField(
                      hint: 'e.g., Casual Leave, Sick Leave',
                      icon: Icons.category_outlined,
                    ),
                    const SizedBox(height: 20),
                    const Row(
                      children: <Widget>[
                        Expanded(
                          child: CustomTextField(
                            hint: 'Start Date',
                            icon: Icons.date_range_outlined,
                          ),
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: CustomTextField(
                            hint: 'End Date',
                            icon: Icons.date_range_outlined,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const CustomTextField(
                      hint: 'Explain your reason for leave...',
                      icon: Icons.notes_outlined,
                    ),
                    const SizedBox(height: 32),
                    AppButton(label: 'Submit Application', onPressed: () {}),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
