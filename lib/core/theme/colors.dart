import 'package:flutter/material.dart';

extension AppColorHelper on BuildContext {
  AppColors get appColors => Theme.of(this).extension<AppColors>()!;
}

@immutable
class AppColors extends ThemeExtension<AppColors> {
  final Color black;
  final Color teal;
  final Color white;
  final Color offWhite;
  final Color grey;
  final Color green;

  const AppColors({
    required this.black,
    required this.teal,
    required this.white,
    required this.offWhite,
    required this.grey,
    required this.green,
  });

  @override
  AppColors copyWith({
    Color? black,
    Color? teal,
    Color? white,
    Color? offWhite,
    Color? grey,
    Color? green,
  }) {
    return AppColors(
      black: black ?? this.black,
      teal: teal ?? this.teal,
      white: white ?? this.white,
      offWhite: offWhite ?? this.offWhite,
      grey: grey ?? this.grey,
      green: green ?? this.green,
    );
  }

  @override
  AppColors lerp(ThemeExtension<AppColors>? other, double t) {
    if (other is! AppColors) return this;
    return AppColors(
      black: Color.lerp(black, other.black, t)!,
      teal: Color.lerp(teal, other.teal, t)!,
      white: Color.lerp(white, other.white, t)!,
      offWhite: Color.lerp(offWhite, other.offWhite, t)!,
      grey: Color.lerp(grey, other.grey, t)!,
      green: Color.lerp(green, other.green, t)!,
    );
  }
}
