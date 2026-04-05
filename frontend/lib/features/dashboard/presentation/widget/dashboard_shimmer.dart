import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:shimmer/shimmer.dart';

class DashboardShimmer extends StatelessWidget {
  const DashboardShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (_) => _buildMobileLayout(context),
      tablet: (_) => _buildDesktopLayout(context),
      desktop: (_) => _buildDesktopLayout(context),
    );
  }

  Widget _buildShimmerContainer(
    BuildContext context, {
    required double width,
    required double height,
    double borderRadius = 8.0,
  }) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    return Shimmer.fromColors(
      baseColor: isDark ? Colors.grey[800]! : Colors.grey[300]!,
      highlightColor: isDark ? Colors.grey[700]! : Colors.grey[100]!,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: isDark ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
      ),
    );
  }

  Widget _buildMobileLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        spacing: 16,
        crossAxisAlignment: .start,
        children: <Widget>[
          _buildGreetingShimmer(context),
          _buildStatsGridShimmer(context, 1),
          _buildExpandableSectionsShimmer(context),
          _buildSidePanelShimmer(context),
        ],
      ),
    );
  }

  Widget _buildDesktopLayout(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 32.0),
      child: Column(
        crossAxisAlignment: .start,
        spacing: 16,
        children: <Widget>[
          _buildGreetingShimmer(context),
          _buildStatsGridShimmer(context, 3),
          Row(
            spacing: 16,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: _buildExpandableSectionsShimmer(context)),
              Expanded(child: _buildSidePanelShimmer(context)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildGreetingShimmer(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            _buildShimmerContainer(context, width: 150, height: 28),
            const SizedBox(height: 8),
            _buildShimmerContainer(context, width: 100, height: 16),
          ],
        ),
        _buildShimmerContainer(
          context,
          width: 48,
          height: 48,
          borderRadius: 24,
        ),
      ],
    );
  }

  Widget _buildStatsGridShimmer(BuildContext context, int crossAxisCount) {
    return GridView.count(
      crossAxisCount: crossAxisCount,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      childAspectRatio: 1.8,
      children: List<Widget>.generate(
        3,
        (int index) => _buildShimmerContainer(
          context,
          width: double.infinity,
          height: 120,
          borderRadius: 12,
        ),
      ),
    );
  }

  Widget _buildExpandableSectionsShimmer(BuildContext context) {
    return Column(
      children: <Widget>[
        _buildShimmerContainer(
          context,
          width: double.infinity,
          height: 60,
          borderRadius: 12,
        ),
        const SizedBox(height: 16),
        _buildShimmerContainer(
          context,
          width: double.infinity,
          height: 60,
          borderRadius: 12,
        ),
      ],
    );
  }

  Widget _buildSidePanelShimmer(BuildContext context) {
    return _buildShimmerContainer(
      context,
      width: double.infinity,
      height: 400,
      borderRadius: 12,
    );
  }
}
