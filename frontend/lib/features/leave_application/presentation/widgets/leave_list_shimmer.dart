import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LeaveListShimmer extends StatelessWidget {
  const LeaveListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _TitleShimmer(),
        SizedBox(height: 24),
        Expanded(child: _ListShimmer()),
      ],
    );
  }
}

class _TitleShimmer extends StatelessWidget {
  const _TitleShimmer();

  @override
  Widget build(BuildContext context) {
    return const _ShimmerBox(height: 20, width: 180);
  }
}

class _ListShimmer extends StatelessWidget {
  const _ListShimmer();

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: 6,
      separatorBuilder: (_, __) => const SizedBox(height: 16),
      itemBuilder: (_, __) => const _ShimmerCard(),
    );
  }
}

class _ShimmerCard extends StatelessWidget {
  const _ShimmerCard();

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Row(
          children: <Widget>[
            _ShimmerCircle(size: 40),
            SizedBox(width: 16),
            Expanded(child: _TextSectionShimmer()),
            SizedBox(width: 16),
            _ShimmerBox(height: 24, width: 70),
          ],
        ),
      ),
    );
  }
}

class _TextSectionShimmer extends StatelessWidget {
  const _TextSectionShimmer();

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        _ShimmerBox(height: 14, width: double.infinity),
        SizedBox(height: 8),
        _ShimmerBox(height: 12, width: 120),
      ],
    );
  }
}

class _ShimmerBox extends StatelessWidget {
  const _ShimmerBox({required this.height, required this.width});
  final double height;
  final double width;

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color baseColor = isDark ? Colors.grey[800]! : Colors.grey[300]!;
    final Color highlightColor = isDark ? Colors.grey[700]! : Colors.grey[100]!;
    return Shimmer.fromColors(
      baseColor: baseColor,
      highlightColor: highlightColor,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(6),
        ),
      ),
    );
  }
}

class _ShimmerCircle extends StatelessWidget {
  const _ShimmerCircle({required this.size});
  final double size;

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey.shade300,
      highlightColor: Colors.grey.shade100,
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
