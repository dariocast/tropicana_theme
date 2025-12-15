import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tropicana_theme/src/tropicana_colors.dart';

/// Defines the typography for the Tropicana theme.
class TropicanaTypography {
  TropicanaTypography._();

  /// Returns the TextTheme for the light theme.
  static TextTheme get lightTextTheme {
    return GoogleFonts.mulishTextTheme().copyWith(
      displayLarge: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.fraunces(
        color: TropicanaColors.deepJungleGreen,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: GoogleFonts.mulish(
        color: TropicanaColors.deepJungleGreen,
      ),
      bodyMedium: GoogleFonts.mulish(
        color: TropicanaColors.deepJungleGreen,
      ),
      bodySmall: GoogleFonts.mulish(
        color: TropicanaColors.deepJungleGreen.withAlpha(200),
      ),
    );
  }

  /// Returns the TextTheme for the dark theme.
  static TextTheme get darkTextTheme {
    return GoogleFonts.mulishTextTheme().copyWith(
      displayLarge: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      displayMedium: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      displaySmall: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      headlineLarge: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      headlineSmall: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.w600,
      ),
      titleMedium: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.w600,
      ),
      titleSmall: GoogleFonts.fraunces(
        color: TropicanaColors.beige,
        fontWeight: FontWeight.w600,
      ),
      bodyLarge: GoogleFonts.mulish(
        color: TropicanaColors.beige,
      ),
      bodyMedium: GoogleFonts.mulish(
        color: TropicanaColors.beige,
      ),
      bodySmall: GoogleFonts.mulish(
        color: TropicanaColors.beige.withAlpha(200),
      ),
    );
  }
}
