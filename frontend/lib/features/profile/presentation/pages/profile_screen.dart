import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_appbar.dart';
import '../widgets/build_profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppAppBar(
        title: 'My Profile',
        actions: [
          IconButton(icon: const Icon(Icons.edit_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Column(
              children: [
                BuildProfileHeader(),
                const SizedBox(height: 32),
                _buildInfoCard(context, 'Personal Information', [
                  _buildInfoRow('Email', 'alex.johnson@metaspace.com'),
                  _buildInfoRow('Phone', '+1 (555) 012-3456'),
                  _buildInfoRow('Location', 'San Francisco, CA'),
                ]),
                const SizedBox(height: 24),
                _buildInfoCard(context, 'Job Details', [
                  _buildInfoRow('Department', 'Engineering'),
                  _buildInfoRow('Role', 'Software Engineer'),
                  _buildInfoRow('Manager', 'Sarah Connor'),
                  _buildInfoRow('Join Date', 'January 15, 2024'),
                ]),
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

  Widget _buildInfoCard(
    BuildContext context,
    String title,
    List<Widget> children,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.titleLarge),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 16),
            ...children,
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          ),
        ],
      ),
    );
  }
}
