import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/routes/route_names.dart';
import '../../../../core/utils/ui/commands/snackbar_commands.dart';
import '../../../../core/utils/validation.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/custom_text_field.dart';
import '../../domain/entities/user_entity.dart';
import '../bloc/auth_bloc.dart';
import '../widget/auth_header.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({super.key});

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Access theme for spacing and layout logic
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
                    children: <Widget>[
                      const SizedBox(height: 60),

                      const AuthHeader(
                        title: 'Welcome Back',
                        subtitle: 'Sign in to continue your journey',
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
                        hint: 'Enter your password',
                        controller: _passwordController,
                        isPassword: true,
                        maxLength: 25,
                        icon: Icons.lock_outline,
                        validator: AppValidation.validatePassword,
                      ),

                      const SizedBox(height: 32),

                      // Main Action Button (using our new AppButton)
                      BlocConsumer<AuthBloc, AuthState>(
                        listener: (BuildContext context, AuthState state) {
                          state.whenOrNull(
                            success: (AuthEntity data, String message) {
                              SnackbarCommand.show(
                                type: ToastType.success,
                                title: message,
                              );

                              context.goNamed(AppRouteNames.dashboard);
                            },
                            error: (String message) {
                              SnackbarCommand.show(
                                type: ToastType.error,
                                title: message,
                              );
                            },
                          );
                        },
                        builder: (BuildContext context, AuthState state) {
                          final bool isLoading = state.maybeWhen(
                            loading: () => true,
                            orElse: () => false,
                          );

                          return AppButton(
                            isLoading: isLoading,
                            label: 'Sign In',
                            onPressed: isLoading
                                ? null
                                : () {
                                    if (_formKey.currentState!.validate()) {
                                      context.read<AuthBloc>().add(
                                        AuthEvent.login(
                                          email: _emailController.text.trim(),
                                          password: _passwordController.text
                                              .trim(),
                                        ),
                                      );
                                    }
                                  },
                          );
                        },
                      ),

                      const SizedBox(height: 24),

                      // Navigation using AppText for consistency
                      GestureDetector(
                        onTap: () => context.goNamed(AppRouteNames.signup),
                        child: RichText(
                          text: TextSpan(
                            style: theme.textTheme.bodyMedium,
                            children: <InlineSpan>[
                              const TextSpan(text: "Don't have an account? "),
                              TextSpan(
                                text: 'Sign Up',
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
