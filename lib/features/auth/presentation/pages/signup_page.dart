import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/validation.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../widget/auth_header.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.scaffoldBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Card(
            child: SizedBox(
              width: 450,
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: .min,
                    mainAxisAlignment: .center,
                    children: <Widget>[
                      const SizedBox(height: 60),

                      const AuthHeader(
                        title: 'Create Account',
                        subtitle: 'Start tracking your progress',
                      ),

                      const SizedBox(height: 40),

                      // Text Fields
                      CustomTextField(
                        hint: 'your.email@example.com',
                        controller: _emailController,
                        icon: Icons.email_outlined,
                        keyboardType: TextInputType.emailAddress,
                        maxLength: 50,
                        validator: AppValidation.validateEmail,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        hint: 'Enter you full name',
                        controller: _nameController,
                        icon: Icons.person,
                        maxLength: 25,
                        validator: AppValidation.validateFullname,
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        hint: 'Enter your password',
                        controller: _passwordController,
                        isPassword: true,
                        icon: Icons.lock_outline,
                        maxLength: 25,
                        validator: AppValidation.validatePassword,
                      ),

                      const SizedBox(height: 32),

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
                            style: theme.textTheme.bodyMedium,
                            children: <InlineSpan>[
                              const TextSpan(text: 'Already have an account? '),
                              TextSpan(
                                text: 'Sign In',
                                style: TextStyle(
                                  color: theme.colorScheme.primary,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
