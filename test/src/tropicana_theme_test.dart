import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:tropicana_theme/tropicana_theme.dart';

void main() {
  group('TropicanaColors', () {
    test('colors are correct', () {
      expect(TropicanaColors.deepJungleGreen, const Color(0xFF0D4949));
      expect(TropicanaColors.middleGreenYellow, const Color(0xFFA4C24F));
      expect(TropicanaColors.beige, const Color(0xFFF6F6E3));
      expect(TropicanaColors.goldenOchre, const Color(0xFFFBC948));
      expect(TropicanaColors.spanishOrange, const Color(0xFFDB611D));
    });
  });
}
