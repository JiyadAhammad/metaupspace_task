import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../../core/constants/app_const.dart';
import '../widget/build_action_panel.dart';
import '../widget/build_stats_grid.dart';
import '../widget/expandable_widget.dart';
import '../widget/greeting_header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ScreenTypeLayout.builder(
          mobile: (_) => const _BuildMobileLayout(),
          tablet: (_) => const _BuildLaptopLayout(),
          desktop: (_) => const _BuildDesktopLayout(),
        ),
      ),
    );
  }
}

class _BuildMobileLayout extends StatelessWidget {
  const _BuildMobileLayout();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          const GreetingHeader(name: 'Alex Johnson', role: 'Software Engineer'),

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
  const _BuildDesktopLayout();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          const GreetingHeader(name: 'Alex Johnson', role: 'Software Engineer'),

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
  const _BuildLaptopLayout();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          const GreetingHeader(name: 'Alex Johnson', role: 'Software Engineer'),

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
