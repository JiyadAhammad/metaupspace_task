import 'package:flutter/material.dart';

import '../../../widgets/custom_text.dart';
import '../../colors.dart';
import 'app_commands.dart';

enum ToastType { success, error, info, warning }

class SnackbarCommand {
  static final GlobalKey<ScaffoldMessengerState> messengerKey =
      AppCommands.messengerKey;

  static void show({
    required ToastType type,
    required String title,
    String? label,
    String? description,
    String? actionText,
    VoidCallback? onAction,
    Duration duration = const Duration(seconds: 3),
  }) {
    final SnackBar snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      backgroundColor: Colors.transparent,
      elevation: 0,
      duration: duration,
      margin: const EdgeInsets.all(16),
      content: AppToast(
        type: type,
        title: title,
        label: label,
        description: description,
        actionText: actionText,
        onAction: onAction,
      ),
    );

    messengerKey.currentState
      ?..hideCurrentSnackBar()
      ..showSnackBar(snackBar);
  }
}

class AppToast extends StatelessWidget {
  const AppToast({
    super.key,
    required this.type,
    required this.title,
    this.label,
    this.description,
    this.actionText,
    this.onAction,
  });
  final ToastType type;
  final String title;
  final String? label;
  final String? description;
  final String? actionText;
  final VoidCallback? onAction;

  @override
  Widget build(BuildContext context) {
    final ToastStyle style = ToastStyles.of(type);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: style.background, // ✅ background added
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: style.border),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black.withAlpha(20),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(style.icon, color: style.iconColor, size: 22),
          const SizedBox(width: 12),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                AppText(
                  title,
                  variant: TextVariant.large,
                  color: style.textColor, // ✅ text color
                ),

                if (label != null) ...<Widget>[
                  const SizedBox(height: 4),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 2,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(15),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: AppText(label!, color: style.textColor),
                  ),
                ],

                if (description != null) ...<Widget>[
                  const SizedBox(height: 6),
                  AppText(description!, color: style.textColor),
                ],
              ],
            ),
          ),

          if (actionText != null)
            TextButton(
              onPressed: onAction,
              child: Text(
                actionText!,
                style: TextStyle(color: style.textColor),
              ),
            ),
        ],
      ),
    );
  }
}

class ToastStyle {
  const ToastStyle({
    required this.background,
    required this.border,
    required this.icon,
    required this.iconColor,
    required this.textColor,
  });

  final Color background;
  final Color border;
  final IconData icon;
  final Color iconColor;
  final Color textColor;
}

class ToastStyles {
  static ToastStyle of(ToastType type) {
    switch (type) {
      case ToastType.success:
        return const ToastStyle(
          background: AppColors.successBg,
          border: AppColors.success,
          icon: Icons.check_circle,
          iconColor: Colors.white,
          textColor: Colors.white,
        );

      case ToastType.error:
        return const ToastStyle(
          background: AppColors.errorBg,
          border: AppColors.error,
          icon: Icons.error,
          iconColor: Colors.white,
          textColor: Colors.white,
        );

      case ToastType.warning:
        return const ToastStyle(
          background: AppColors.warningBg,
          border: AppColors.warning,
          icon: Icons.warning,
          iconColor: Colors.white,
          textColor: Colors.white,
        );

      case ToastType.info:
        return const ToastStyle(
          background: AppColors.infoBg,
          border: AppColors.blue,
          icon: Icons.info,
          iconColor: Colors.white,
          textColor: Colors.white,
        );
    }
  }
}
