import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xff003465);
  static const Color purpleBlue = Color(0xff5882C1);
  static const Color brightGreen = Color(0xff05FBF3);
  static const Color blue = Color(0xff059BE5);
  static const Color brightBlue = Color(0xff4894FE);
  static const Color white = Color(0xffffffff);
  static const Color blackText = Color(0xff000000);
  static const Color grey = Color(0xffBCBEC0);
  static const RadialGradient bioSuccessGradiant = RadialGradient(
    colors: [
      Color(0xff19599B),
      Color(0xff9FE7F5),
    ],
  );
  static const profileGradiant = LinearGradient(
    colors: [
      Color(0xff0A94F8),
      Color(0xffC876C9),
      Color(0xffFF6E91),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const RadialGradient bgGradiant = RadialGradient(
    radius: 1.2,
    colors: [
      Color(0xff0085FF),
      Color(0xff003465),
    ],
  );

  static const LinearGradient editProfileGradient = LinearGradient(
    colors: [
      Color(0xff0085FF),
      Color(0xff003465),
    ],
  );
}
