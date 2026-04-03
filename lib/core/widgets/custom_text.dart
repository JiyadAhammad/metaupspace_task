import 'package:flutter/material.dart';

import '../utils/typography.dart';

enum TextVariant { h1, h2, h3, large, body, small, caption }

class AppText extends StatelessWidget {
  const AppText(
    this.text, {
    super.key,
    this.variant = TextVariant.body,
    this.color,
    this.textAlign,
    this.fontWeight,
    this.overflow,
    this.maxLines,
    this.decoration,
  });
  final String text;
  final TextVariant variant;
  final Color? color;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final TextOverflow? overflow;
  final int? maxLines;
  final TextDecoration? decoration;

  @override
  Widget build(BuildContext context) {
    // Mapping variants to the Theme we defined earlier
    TextStyle? style;

    switch (variant) {
      case TextVariant.h1:
        style = AppTypography.h1;
        break;

      case TextVariant.h2:
        style = AppTypography.h2;
        break;

      case TextVariant.h3:
        style = AppTypography.h3;
        break;

      case TextVariant.large:
        style = AppTypography.large;
        break;

      case TextVariant.body:
        style = AppTypography.body;
        break;

      case TextVariant.small:
        style = AppTypography.small;
        break;

      case TextVariant.caption:
        style = AppTypography.caption;
        break;
    }

    return Text(
      text,
      textAlign: textAlign,
      maxLines: maxLines,
      overflow: overflow,

      style: style.copyWith(
        color: color,
        fontWeight: fontWeight,
        decoration: decoration,
      ),
    );
  }
}
