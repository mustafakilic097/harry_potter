import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../constants/enum/app_theme_enum.dart';
import 'app_theme_dark.dart';
import 'app_theme_light.dart';

class ThemeNotifier extends ChangeNotifier {
  ThemeData _currentTheme = AppThemeLight.instance.theme;
  ThemeData get currentTheme => _currentTheme;

  Future<void> changeTheme(AppThemes theme) async {
    if (theme == AppThemes.DARK) {
      _currentTheme = AppThemeDark.instance.theme;
    } else {
      _currentTheme = AppThemeLight.instance.theme;
    }
    notifyListeners();
  }
}

final themeNotifierProvider = ChangeNotifierProvider((ref) => ThemeNotifier());
