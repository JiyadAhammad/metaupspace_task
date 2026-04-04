import 'dart:developer' as developer;

enum LogType { debug, success, warning, error, info }

class AppLogger {
  static const String _border =
      '════════════════════════════════════════════════════════════';

  static void log(
    String message, {
    LogType type = LogType.debug,
    String tag = 'APP',
    Object? error,
    StackTrace? stackTrace,
  }) {
    final int level = _getLevel(type);
    final String emoji = _getEmoji(type);

    developer.log(
      '$_border\n$emoji [$tag] $message\n$_border',
      name: tag,
      level: level,
      error: error,
      stackTrace: stackTrace,
    );
  }

  static int _getLevel(LogType type) {
    switch (type) {
      case LogType.debug:
        return 500;
      case LogType.info:
        return 800;
      case LogType.success:
        return 850;
      case LogType.warning:
        return 900;
      case LogType.error:
        return 1000;
    }
  }

  static String _getEmoji(LogType type) {
    switch (type) {
      case LogType.debug:
        return '🐞 DEBUG';
      case LogType.info:
        return 'ℹ️ INFO';
      case LogType.success:
        return '✅ SUCCESS';
      case LogType.warning:
        return '⚠️ WARNING';
      case LogType.error:
        return '❌ ERROR';
    }
  }

  static void debug(String message, {String tag = 'DEBUG'}) {
    log(message, tag: tag);
  }

  static void info(String message, {String tag = 'INFO'}) {
    log(message, type: LogType.info, tag: tag);
  }

  static void success(String message, {String tag = 'SUCCESS'}) {
    log(message, type: LogType.success, tag: tag);
  }

  static void warning(String message, {String tag = 'WARNING'}) {
    log(message, type: LogType.warning, tag: tag);
  }

  static void error(
    String message, {
    String tag = 'ERROR',
    Object? error,
    StackTrace? stackTrace,
  }) {
    log(
      message,
      type: LogType.error,
      tag: tag,
      error: error,
      stackTrace: stackTrace,
    );
  }
}
