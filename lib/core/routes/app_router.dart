import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/auth/presentation/pages/signin_page.dart';
import '../../features/auth/presentation/pages/signup_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_screen.dart';
import '../../features/leave/presentation/pages/apply_leave_screen.dart';
import '../../features/leave/presentation/pages/leave_history_screen.dart';
import '../../features/payslip/presentation/pages/view_pay_slips_screen.dart';
import '../app_config/auth_session.dart';
import 'route_names.dart';

class AppRouter {
  // Global key for navigation without context
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static final GoRouter router = GoRouter(
    initialLocation: '/login',
    // initialLocation: '/help-support',
    navigatorKey: navigatorKey,
    debugLogDiagnostics: true, // Useful for development
    // --- Deep Linking Configuration ---
    // In the future, you'll set your host here (e.g., app.example.com)
    // For now, it allows path-based URL navigation
    routes: <RouteBase>[
      GoRoute(
        path: '/login',
        name: AppRouteNames.signin,
        builder: (BuildContext context, GoRouterState state) =>
            const SigninPage(),
      ),
      GoRoute(
        path: '/signup',
        name: AppRouteNames.signup,
        builder: (BuildContext context, GoRouterState state) =>
            const SignUpPage(),
      ),
      GoRoute(
        path: '/dashboard',
        name: AppRouteNames.dashboard,
        builder: (BuildContext context, GoRouterState state) =>
            const DashboardScreen(),
      ),
      GoRoute(
        path: '/apply-leave',
        name: AppRouteNames.applyLeave,
        builder: (BuildContext context, GoRouterState state) =>
            const ApplyLeaveScreen(),
      ),
      GoRoute(
        path: '/leave-history',
        name: AppRouteNames.leaveHistory,
        builder: (BuildContext context, GoRouterState state) =>
            const LeaveHistoryScreen(),
      ),
      GoRoute(
        path: '/pay-slip',
        name: AppRouteNames.paySlip,
        builder: (BuildContext context, GoRouterState state) =>
            const ViewPaySlipsScreen(),
      ),
    ],

    // Error page for unknown routes (Production standard)
    errorBuilder: (BuildContext context, GoRouterState state) => Scaffold(
      body: Center(child: Text('No route defined for ${state.uri}')),
    ),

    // --- Auth Guard (Redirection) ---
    // This is where you will check if the user is logged in
    redirect: (BuildContext context, GoRouterState state) {
      final bool loggedIn = AuthSession.isLoggedIn;

      final bool loggingIn =
          state.matchedLocation == '/login' ||
          state.matchedLocation == '/signup';

      if (!loggedIn && !loggingIn) {
        return '/login';
      }

      if (loggedIn && loggingIn) {
        return '/dashboard';
      }

      return null;
    },
  );
}
