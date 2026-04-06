import 'package:flutter/material.dart';

import '../../../../core/extension/date_extension.dart';
import '../../../../core/widgets/custom_appbar.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../../dashboard/domain/entity/dashboard_entity.dart';
import '../widgets/build_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, required this.employee});

  final EmployeeEntity employee;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppAppBar(title: 'My Profile'),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: <Widget>[
                BuildProfileHeader(entity: employee),
                const SizedBox(height: 32),
                BuildProfileInfo(
                  title: 'Personal Information',
                  children: <Widget>[
                    _BuildInfoRow(label: 'Name', value: employee.fullName),
                    _BuildInfoRow(label: 'Role', value: employee.role),
                    _BuildInfoRow(label: 'Email', value: employee.email),
                  ],
                ),
                const SizedBox(height: 24),
                BuildProfileInfo(
                  title: 'Job Details',
                  children: <Widget>[
                    _BuildInfoRow(
                      label: 'Department',
                      value: employee.department,
                    ),
                    _BuildInfoRow(label: 'Role', value: employee.role),
                    _BuildInfoRow(label: 'Manager', value: employee.manager),
                    _BuildInfoRow(
                      label: 'Join Date',
                      value: employee.joiningDate.toDMY(),
                    ),
                  ],
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton.icon(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.logout, color: Colors.red),
                    label: const Text(
                      'Log Out',
                      style: TextStyle(color: Colors.red),
                    ),
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      side: const BorderSide(color: Colors.red),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _BuildInfoRow extends StatelessWidget {
  const _BuildInfoRow({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(flex: 2, child: AppText(label, variant: TextVariant.large)),
          Expanded(flex: 3, child: AppText(value, variant: TextVariant.small)),
        ],
      ),
    );
  }
}

class BuildProfileInfo extends StatelessWidget {
  const BuildProfileInfo({
    super.key,
    required this.title,
    required this.children,
  });

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AppText(title, variant: TextVariant.h3),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }
}
