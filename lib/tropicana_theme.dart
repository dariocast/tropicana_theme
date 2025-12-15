import 'package:flutter/material.dart';
import 'package:tropicana_theme/src/theme_data.dart';

export 'src/theme_data.dart';
export 'src/tropicana_colors.dart';
export 'src/tropicana_typography.dart';

/// The Tropicana Theme package entry point.
class TropicanaTheme {
  /// Returns the light theme data.
  static ThemeData get light => TropicanaThemeData.lightTheme;

  /// Returns the dark theme data.
  static ThemeData get dark => TropicanaThemeData.darkTheme;
}
