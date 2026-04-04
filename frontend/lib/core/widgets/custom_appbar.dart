import 'package:flutter/material.dart';

import 'custom_text.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({
    super.key,
    required this.title,
    this.centerTitle = true,
    this.leading,
    this.actions,
    this.showBackButton = false,
  });

  final String title;
  final bool centerTitle;
  final Widget? leading;
  final List<Widget>? actions;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: centerTitle,
      elevation: 0,
      leading: showBackButton
          ? IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () => Navigator.pop(context),
            )
          : leading,
      title: AppText(title, variant: TextVariant.h3),
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
