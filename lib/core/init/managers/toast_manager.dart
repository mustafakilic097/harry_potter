import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

enum ToastStyle { success, error, warning, info }

class Toast {
  static final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  static void show({
    required String msg,
    required ToastStyle style,
    Duration duration = const Duration(seconds: 3),
    Alignment alignment = Alignment.topCenter,
    BuildContext? context,
  }) {
    final icon = _getIcon(style);
    final color = _getColor(style);

    toastification.show(
      context: context ?? navigatorKey.currentContext!,
      title: Text(msg, maxLines: 5),
      autoCloseDuration: duration,
      type: _getType(style),
      alignment: alignment,
      icon: icon,
      style: ToastificationStyle.fillColored,
      primaryColor: color,
    );
  }

  static ToastificationType _getType(ToastStyle style) {
    switch (style) {
      case ToastStyle.success:
        return ToastificationType.success;
      case ToastStyle.error:
        return ToastificationType.error;
      case ToastStyle.warning:
        return ToastificationType.warning;
      case ToastStyle.info:
        return ToastificationType.info;
    }
  }

  static Icon _getIcon(ToastStyle style) {
    switch (style) {
      case ToastStyle.success:
        return Icon(Icons.check_circle, color: Colors.white);
      case ToastStyle.error:
        return Icon(Icons.error, color: Colors.white);
      case ToastStyle.warning:
        return Icon(Icons.warning, color: Colors.white);
      case ToastStyle.info:
        return Icon(Icons.info, color: Colors.white);
    }
  }

  static Color _getColor(ToastStyle style) {
    switch (style) {
      case ToastStyle.success:
        return Colors.green;
      case ToastStyle.error:
        return Colors.red;
      case ToastStyle.warning:
        return Colors.orange;
      case ToastStyle.info:
        return Colors.blue;
    }
  }
}
