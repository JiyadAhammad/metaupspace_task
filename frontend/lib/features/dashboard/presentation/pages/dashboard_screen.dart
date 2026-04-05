import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_const.dart';
import '../../../../core/utils/ui/commands/snackbar_commands.dart';
import '../../../../core/widgets/custom_text.dart';
import '../../domain/entity/dashboard_entity.dart';
import '../bloc/dashboard_bloc.dart';
import '../widget/build_action_panel.dart';
import '../widget/build_stats_grid.dart';
import '../widget/dashboard_shimmer.dart';
import '../widget/expandable_widget.dart';
import '../widget/greeting_header.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<DashboardBloc>().add(
        const DashboardEvent.getDashboardData(),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocConsumer<DashboardBloc, DashboardState>(
          listener: (BuildContext context, DashboardState state) {
            if (state.isError) {
              SnackbarCommand.show(
                type: ToastType.error,
                title: state.errorMessage!,
              );
            }
          },
          builder: (BuildContext context, DashboardState state) {
            final DashboardEntity? dashboardResult = state.dashboard;
            final bool isLoading = state.isLoading;
            final bool isError = state.isError;

            if (isLoading) {
              return const DashboardShimmer();
            }
            if (isError) {
              final String? errorMessage = state.errorMessage;
              return Center(
                child: AppText(errorMessage ?? 'Failed to get Dashboard data'),
              );
            }
            if (dashboardResult == null) {
              return const Center(
                child: AppText('Failed to get Dashboard data'),
              );
            }

            return ScreenTypeLayout.builder(
              mobile: (_) => _BuildMobileLayout(dashboardData: dashboardResult),
              tablet: (_) => _BuildLaptopLayout(dashboardData: dashboardResult),
              desktop: (_) =>
                  _BuildDesktopLayout(dashboardData: dashboardResult),
            );
          },
        ),
      ),
    );
  }
}

class _BuildMobileLayout extends StatelessWidget {
  const _BuildMobileLayout({required this.dashboardData});

  final DashboardEntity? dashboardData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          GreetingHeader(
            name: '${dashboardData?.employee.fullName}',
            role: '${dashboardData?.employee.role}',
          ),

          const BuildStatsGrid(crossAxisCount: 1),

          ExpandableWidget(
            cardTitle: 'Leave Details',
            icon: Icons.beach_access_outlined,
            cardDetails: AppConst.leaveDetails,
          ),
          ExpandableWidget(
            cardTitle: 'Upcoming Holidays',
            icon: Icons.celebration_outlined,
            cardDetails: AppConst.holidaysDetails,
          ),

          const BuildActionPanel(),
        ],
      ),
    );
  }
}

class _BuildDesktopLayout extends StatelessWidget {
  const _BuildDesktopLayout({required this.dashboardData});
  final DashboardEntity? dashboardData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          GreetingHeader(
            name: '${dashboardData?.employee.fullName}',
            role: '${dashboardData?.employee.role}',
          ),

          const BuildStatsGrid(crossAxisCount: 3),
          Row(
            crossAxisAlignment: .start,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    ExpandableWidget(
                      cardTitle: 'Leave Details',
                      icon: Icons.beach_access_outlined,
                      cardDetails: AppConst.leaveDetails,
                    ),
                    ExpandableWidget(
                      cardTitle: 'Upcoming Holidays',
                      icon: Icons.celebration_outlined,
                      cardDetails: AppConst.holidaysDetails,
                    ),
                  ],
                ),
              ),

              const Expanded(child: BuildActionPanel()),
            ],
          ),
        ],
      ),
    );
  }
}

class _BuildLaptopLayout extends StatelessWidget {
  const _BuildLaptopLayout({required this.dashboardData});
  final DashboardEntity? dashboardData;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          GreetingHeader(
            name: '${dashboardData?.employee.fullName}',
            role: '${dashboardData?.employee.role}',
          ),

          const BuildStatsGrid(crossAxisCount: 2),
          Row(
            crossAxisAlignment: .start,
            children: <Widget>[
              Expanded(
                child: ExpandableWidget(
                  cardTitle: 'Leave Details',
                  icon: Icons.beach_access_outlined,
                  cardDetails: AppConst.leaveDetails,
                ),
              ),
              Expanded(
                child: ExpandableWidget(
                  cardTitle: 'Upcoming Holidays',
                  icon: Icons.celebration_outlined,
                  cardDetails: AppConst.holidaysDetails,
                ),
              ),
            ],
          ),
          const BuildActionPanel(),
        ],
      ),
    );
  }
}
