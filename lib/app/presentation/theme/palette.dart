import 'package:flutter/widgets.dart';

abstract class Palette {
  static const white = Color(0xFFFFFFFF);

  static const black10 = Color(0xFF656565);

  static const black50 = Color(0xFF444444);

  static const black = Color(0xFF111111);

  static const gray25 = Color(0xFFF0F2F5);

  static const gray100 = Color(0xFF9C9C9C);

  static const blue = Color(0xFF87C6F5);

  static const red = Color(0xFFEC4E27);

  static const gradientBlue = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF3465C3),
      Color(0xFF5785DE),
    ],
  );

  static const gradientRed = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFFEC4E27),
      Color(0xFFF47E61),
    ],
  );

  static const gradientPurple = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF6B34C3),
      Color(0xFF8E5EDB),
    ],
  );
}
