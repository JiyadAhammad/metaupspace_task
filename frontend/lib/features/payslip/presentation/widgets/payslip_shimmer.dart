import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PayslipShimmer extends StatelessWidget {
  const PayslipShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: _ContainerWrapper());
  }
}

class _ContainerWrapper extends StatelessWidget {
  const _ContainerWrapper();

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 800),
      padding: const EdgeInsets.all(24.0),
      child: const Column(
        children: <Widget>[
          _TopRow(),
          SizedBox(height: 24),
          _HeaderText(),
          SizedBox(height: 16),
          Expanded(child: _PayslipList()),
        ],
      ),
    );
  }
}

/// 🔹 Top Row
class _TopRow extends StatelessWidget {
  const _TopRow();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        _ShimmerBox(width: 150, height: 20),
        _ShimmerBox(width: 140, height: 30, radius: 20),
      ],
    );
  }
}

/// 🔹 Header Text
class _HeaderText extends StatelessWidget {
  const _HeaderText();

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.centerLeft,
      child: _ShimmerBox(width: 200, height: 16),
    );
  }
}

/// 🔹 List
class _PayslipList extends StatelessWidget {
  const _PayslipList();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 5,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (_, __) => const _PayslipCard(),
    );
  }
}

/// 🔹 Card
class _PayslipCard extends StatelessWidget {
  const _PayslipCard();

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color baseColor = isDark ? Colors.grey[800]! : Colors.grey[300]!;
    final Color highlightColor = isDark ? Colors.grey[700]! : Colors.grey[100]!;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: const Row(
          children: <Widget>[
            _Circle(),
            SizedBox(width: 16),
            Expanded(child: _TextSection()),
            _ShimmerBox(width: 60, height: 16),
          ],
        ),
      ),
    );
  }
}

/// 🔹 Circle
class _Circle extends StatelessWidget {
  const _Circle();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 48,
      height: 48,
      decoration: const BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
      ),
    );
  }
}

/// 🔹 Text Section
class _TextSection extends StatelessWidget {
  const _TextSection();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _ShimmerBox(width: 120, height: 16),
        SizedBox(height: 8),
        _ShimmerBox(width: 180, height: 14),
      ],
    );
  }
}

/// 🔹 Reusable Shimmer Box
class _ShimmerBox extends StatelessWidget {

  const _ShimmerBox({
    required this.width,
    required this.height,
    this.radius = 8,
  });
  final double width;
  final double height;
  final double radius;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color baseColor = isDark ? Colors.grey[800]! : Colors.grey[300]!;
    final Color highlightColor = isDark ? Colors.grey[700]! : Colors.grey[100]!;

    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(radius),
        ),
      ),
    );
  }
}
