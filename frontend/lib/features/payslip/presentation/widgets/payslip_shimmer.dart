import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class PayslipShimmer extends StatelessWidget {
  const PayslipShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isDark = Theme.of(context).brightness == Brightness.dark;
    final Color baseColor = isDark ? Colors.grey[800]! : Colors.grey[300]!;
    final Color highlightColor = isDark ? Colors.grey[700]! : Colors.grey[100]!;

    return Center(
      child: Container(
        constraints: const BoxConstraints(maxWidth: 800),
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                _shimmerBox(context, width: 150, height: 20),
                _shimmerBox(context, width: 140, height: 30, radius: 20),
              ],
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: _shimmerBox(context, width: 200, height: 16),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (_, __) {
                  return Shimmer.fromColors(
                    baseColor: baseColor,
                    highlightColor: highlightColor,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24,
                        vertical: 16,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                          ),

                          const SizedBox(width: 16),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                _shimmerBox(context, width: 120, height: 16),
                                const SizedBox(height: 8),
                                _shimmerBox(context, width: 180, height: 14),
                              ],
                            ),
                          ),
                          _shimmerBox(context, width: 60, height: 16),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _shimmerBox(
    BuildContext context, {
    required double width,
    required double height,
    double radius = 8,
  }) {
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
