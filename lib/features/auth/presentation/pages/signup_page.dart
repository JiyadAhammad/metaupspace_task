import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_const.dart';
import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/validation.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_dropdown.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../widget/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: ScreenTypeLayout.builder(
            mobile: (_) => _MobileLayout(theme: theme),
            tablet: (_) => _TabletLayout(theme: theme),
            desktop: (_) => _DesktopLayout(theme: theme),
          ),
        ),
      ),
    );
  }
}

class _MobileLayout extends StatelessWidget {
  const _MobileLayout({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(12),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: _SignUpLayout(theme: theme, type: DeviceScreenType.mobile),
      ),
    );
  }
}

class _TabletLayout extends StatelessWidget {
  const _TabletLayout({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 600,
      child: Card(
        margin: const EdgeInsets.all(12),
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: _SignUpLayout(theme: theme, type: DeviceScreenType.tablet),
        ),
      ),
    );
  }
}

class _DesktopLayout extends StatelessWidget {
  const _DesktopLayout({required this.theme});

  final ThemeData theme;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: _SignUpLayout(theme: theme, type: DeviceScreenType.desktop),
        ),
      ),
    );
  }
}

class _SignUpLayout extends StatefulWidget {
  const _SignUpLayout({required this.theme, required this.type});
  final ThemeData theme;
  final DeviceScreenType type;

  @override
  State<_SignUpLayout> createState() => _SignUpLayoutState();
}

class _SignUpLayoutState extends State<_SignUpLayout> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  final TextEditingController _managerController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();

  String? _selectedDepartment;
  String? _selectedRole;

  Future<void> _selectDate() async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(picked);
      });
    }
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    _managerController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    log('${widget.type}');
    return Form(
      key: _formKey,
      child: Column(
        mainAxisSize: .min,
        mainAxisAlignment: .center,
        spacing: 16,
        children: <Widget>[
          const AuthHeader(
            title: 'Create Account',
            subtitle: 'Please fill out the form below to register.',
          ),

          const SizedBox(height: 20),

          if (widget.type != DeviceScreenType.mobile) ...<Widget>[
            Row(
              spacing: 12,
              children: <Widget>[
                Expanded(
                  child: CustomTextField(
                    hint: 'your.email@example.com',
                    controller: _emailController,
                    icon: Icons.email_outlined,
                    keyboardType: TextInputType.emailAddress,
                    maxLength: 50,
                    validator: AppValidation.validateEmail,
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    hint: 'Enter you full name',
                    controller: _nameController,
                    icon: Icons.person,
                    maxLength: 25,
                    validator: AppValidation.validateFullname,
                  ),
                ),
              ],
            ),
          ] else
          // Text Fields
          ...<Widget>[
            CustomTextField(
              hint: 'your.email@example.com',
              controller: _emailController,
              icon: Icons.email_outlined,
              keyboardType: TextInputType.emailAddress,
              maxLength: 50,
              validator: AppValidation.validateEmail,
            ),
            CustomTextField(
              hint: 'Enter you full name',
              controller: _nameController,
              icon: Icons.person,
              maxLength: 25,
              validator: AppValidation.validateFullname,
            ),
          ],
          CustomTextField(
            hint: 'Enter your password',
            controller: _passwordController,
            isPassword: true,
            icon: Icons.lock_outline,
            maxLength: 25,
            validator: AppValidation.validatePassword,
          ),
          if (widget.type != DeviceScreenType.mobile) ...<Widget>[
            Row(
              crossAxisAlignment: .start,
              spacing: 12,
              children: <Widget>[
                Expanded(
                  child: CustomDropdown(
                    label: 'Department',
                    hint: 'Select Dept',
                    prefixIcon: const Icon(Icons.business),
                    value: _selectedDepartment,
                    items: AppConst.managers.keys.toList(),
                    onChanged: (String? val) {
                      setState(() {
                        _selectedDepartment = val;
                        _selectedRole = null;
                        _managerController.text = AppConst.managers[val] ?? '';
                      });
                    },
                    validator: (String? val) => val == null ? 'Required' : null,
                  ),
                ),
                Expanded(
                  child: CustomDropdown(
                    label: 'Role',
                    hint: 'Select Role',
                    prefixIcon: const Icon(Icons.work_outline),
                    value: _selectedRole,
                    items: _selectedDepartment == null
                        ? <String>[]
                        : AppConst.roles[_selectedDepartment] ?? <String>[],
                    onChanged: (String? val) =>
                        setState(() => _selectedRole = val),
                    validator: (String? val) => val == null ? 'Required' : null,
                  ),
                ),
              ],
            ),
          ] else ...<Widget>[
            CustomDropdown(
              label: 'Department',
              hint: 'Select Dept',
              prefixIcon: const Icon(Icons.business),
              value: _selectedDepartment,
              items: AppConst.managers.keys.toList(),
              onChanged: (String? val) {
                setState(() {
                  _selectedDepartment = val;
                  _selectedRole = null;
                  _managerController.text = AppConst.managers[val] ?? '';
                });
              },
              validator: (String? val) => val == null ? 'Required' : null,
            ),
            CustomDropdown(
              label: 'Role',
              hint: 'Select Role',
              prefixIcon: const Icon(Icons.work_outline),
              value: _selectedRole,
              items: _selectedDepartment == null
                  ? <String>[]
                  : AppConst.roles[_selectedDepartment] ?? <String>[],
              onChanged: (String? val) => setState(() => _selectedRole = val),
              validator: (String? val) => val == null ? 'Required' : null,
            ),
          ],
          if (widget.type != DeviceScreenType.mobile) ...<Widget>[
            Row(
              crossAxisAlignment: .start,
              spacing: 12,
              children: <Widget>[
                Expanded(
                  child: CustomTextField(
                    controller: _managerController,
                    hint: 'Manager',
                    icon: Icons.manage_accounts_outlined,
                    readOnly: true,
                  ),
                ),
                Expanded(
                  child: CustomTextField(
                    controller: _dateController,

                    hint: 'Select Joining Date',
                    icon: Icons.calendar_today_outlined,

                    readOnly: true,
                    onTap: _selectDate,
                    validator: (String? val) =>
                        (val == null || val.isEmpty) ? 'Required' : null,
                  ),
                ),
              ],
            ),
          ] else ...<Widget>[
            CustomTextField(
              controller: _managerController,
              hint: 'Manager',
              icon: Icons.manage_accounts_outlined,
              readOnly: true,
            ),
            CustomTextField(
              controller: _dateController,

              hint: 'Select Joining Date',
              icon: Icons.calendar_today_outlined,

              readOnly: true,
              onTap: _selectDate,
              validator: (String? val) =>
                  (val == null || val.isEmpty) ? 'Required' : null,
            ),
          ],

          const SizedBox(height: 16),

          // Main Action Button (using our new AppButton)
          AppButton(
            label: 'Sign Up',
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // call signup API
              }
            },
          ),

          const SizedBox(height: 24),

          // Navigation using AppText for consistency
          GestureDetector(
            onTap: () => context.goNamed(AppRouteNames.signin),
            child: RichText(
              text: TextSpan(
                style: widget.theme.textTheme.bodyMedium,
                children: <InlineSpan>[
                  const TextSpan(text: 'Already have an account? '),
                  TextSpan(
                    text: 'Sign In',
                    style: TextStyle(
                      color: widget.theme.colorScheme.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
