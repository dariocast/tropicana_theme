import 'package:flutter/material.dart';
import 'package:tropicana_theme/src/tropicana_colors.dart';
import 'package:tropicana_theme/src/tropicana_typography.dart';

/// Provides methods to generate the Tropicana ThemeData.
class TropicanaThemeData {
  TropicanaThemeData._();

  /// Returns the light theme data.
  static ThemeData get lightTheme {
    const colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: TropicanaColors.deepJungleGreen,
      onPrimary: TropicanaColors.beige,
      primaryContainer: TropicanaColors.goldenOchre,
      onPrimaryContainer: TropicanaColors.deepJungleGreen,
      secondary: TropicanaColors.middleGreenYellow,
      onSecondary: TropicanaColors.deepJungleGreen,
      tertiary: TropicanaColors.spanishOrange,
      onTertiary: TropicanaColors.beige,
      error: TropicanaColors.spanishOrange,
      onError: TropicanaColors.beige,
      surface: TropicanaColors.beige,
      onSurface: TropicanaColors.deepJungleGreen,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: TropicanaColors.beige,
      textTheme: TropicanaTypography.lightTextTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: TropicanaColors.beige,
        foregroundColor: TropicanaColors.deepJungleGreen,
        elevation: 0,
        centerTitle: false,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: TropicanaColors.deepJungleGreen,
          foregroundColor: TropicanaColors.beige,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      cardTheme: CardThemeData(
        color: TropicanaColors.beige,
        surfaceTintColor: TropicanaColors.goldenOchre,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: TropicanaColors.deepJungleGreen,
          ),
        ),
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: TropicanaColors.beige,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: TropicanaColors.deepJungleGreen,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: TropicanaColors.deepJungleGreen.withAlpha(100),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: TropicanaColors.deepJungleGreen,
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(
          color: TropicanaColors.deepJungleGreen,
        ),
        hintStyle: TextStyle(
          color: TropicanaColors.deepJungleGreen.withAlpha(150),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: TropicanaColors.spanishOrange,
        foregroundColor: TropicanaColors.beige,
      ),
    );
  }

  /// Returns the dark theme data.
  static ThemeData get darkTheme {
    const colorScheme = ColorScheme(
      brightness: Brightness.dark,
      primary: TropicanaColors.beige,
      onPrimary: TropicanaColors.deepJungleGreen,
      primaryContainer: TropicanaColors.middleGreenYellow,
      onPrimaryContainer: TropicanaColors.deepJungleGreen,
      secondary: TropicanaColors.goldenOchre,
      onSecondary: TropicanaColors.deepJungleGreen,
      tertiary: TropicanaColors.spanishOrange,
      onTertiary: TropicanaColors.beige,
      error: TropicanaColors.spanishOrange,
      onError: TropicanaColors.beige,
      surface: TropicanaColors.deepJungleGreen,
      onSurface: TropicanaColors.beige,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: TropicanaColors.deepJungleGreen,
      textTheme: TropicanaTypography.darkTextTheme,
      appBarTheme: const AppBarTheme(
        backgroundColor: TropicanaColors.deepJungleGreen,
        foregroundColor: TropicanaColors.beige,
        elevation: 0,
        centerTitle: false,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: TropicanaColors.beige,
          foregroundColor: TropicanaColors.deepJungleGreen,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        ),
      ),
      cardTheme: CardThemeData(
        color: TropicanaColors.deepJungleGreen,
        surfaceTintColor: TropicanaColors.middleGreenYellow,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(
            color: TropicanaColors.beige,
          ),
        ),
        elevation: 0,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: TropicanaColors.deepJungleGreen,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: TropicanaColors.beige,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(
            color: TropicanaColors.beige.withAlpha(100),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: TropicanaColors.beige,
            width: 2,
          ),
        ),
        labelStyle: const TextStyle(
          color: TropicanaColors.beige,
        ),
        hintStyle: TextStyle(
          color: TropicanaColors.beige.withAlpha(150),
        ),
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: TropicanaColors.spanishOrange,
        foregroundColor: TropicanaColors.beige,
      ),
    );
  }
}
