import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'core/app_config/auth_session.dart';
import 'core/di/injector.dart';
import 'core/environment/app_env.dart';
import 'my_app.dart';

Future<void> main() async {
  Environment.init(AppEnvironment.dev);
  WidgetsFlutterBinding.ensureInitialized();

  ResponsiveSizingConfig.instance.setCustomBreakpoints(
    const ScreenBreakpoints(desktop: 1024, tablet: 768, watch: 200),
  );

  await setupInjector();
  await AuthSession.init();
  runApp(const MainApp());
}
