import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nested/nested.dart';

import 'core/di/injector.dart';
import 'core/environment/app_env.dart';
import 'core/routes/app_router.dart';
import 'core/theme/app_theme.dart';
import 'core/utils/ui/commands/app_commands.dart';
import 'features/auth/presentation/bloc/bloc/auth_bloc.dart';

/// Track. Improve. Get hired
///

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <SingleChildWidget>[
        BlocProvider<AuthBloc>(create: (_) => sl<AuthBloc>()),
      ],
      child: const _MyApp(),
    );
  }
}

final ValueNotifier<ThemeMode> themeNotifier = ValueNotifier<ThemeMode>(
  ThemeMode.system,
);

class _MyApp extends StatelessWidget {
  const _MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<ThemeMode>(
      valueListenable: themeNotifier,
      builder: (_, ThemeMode mode, _) {
        return MaterialApp.router(
          scaffoldMessengerKey: AppCommands.messengerKey,
          title: Environment.current == AppEnvironment.dev
              ? 'MetaUpSpace dev'
              : 'MetaUpSpace',
          themeMode: mode,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          routerConfig: AppRouter.router,
        );
      },
    );
  }
}
