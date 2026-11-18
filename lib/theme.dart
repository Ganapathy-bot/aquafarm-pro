import 'package:flutter/material.dart';

class AquaColors {
  static const primary = Color(0xFF00685D);
  static const primaryContainer = Color(0xFF008376);
  static const onPrimary = Color(0xFFFFFFFF);
  static const onSurface = Color(0xFF001E31);
  static const variant = Color(0xFF3D4946);
  static const outline = Color(0xFF6D7A77);
  static const outlineVariant = Color(0xFFBDC9C5);
  static const surface = Color(0xFFF7F9FF);
  static const mist = Color(0xFFE7F3F8);
  static const card = Color(0xFFFFFFFF);
  static const low = Color(0xFFECF4FF);
  static const container = Color(0xFFE2EFFF);
  static const secondary = Color(0xFF166D32);
  static const secondaryContainer = Color(0xFFA1F6AB);
  static const tertiary = Color(0xFF96432A);
  static const surfaceBlue = Color(0xFF0369A1);
  static const surfaceBlueBg = Color(0xFFE0F2FE);
  static const amber = Color(0xFFB45309);
  static const amberBg = Color(0xFFFEF3C7);
}

class AquaText {
  static TextStyle manrope(
    double size, {
    FontWeight weight = FontWeight.w600,
    Color color = AquaColors.onSurface,
    double height = 1.25,
  }) {
    return TextStyle(
      fontFamily: 'Segoe UI',
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
    );
  }

  static TextStyle inter(
    double size, {
    FontWeight weight = FontWeight.w600,
    Color color = AquaColors.outline,
    double height = 1.2,
  }) {
    return TextStyle(
      fontFamily: 'Segoe UI',
      fontSize: size,
      fontWeight: weight,
      color: color,
      height: height,
    );
  }
}

/// Bundled pictures are public domain or CC0. The app icon is original.
/// Catla: Nilheda, public domain, Wikimedia Commons.
/// Rohu: Sannidhishetty, CC0. Mrigal: Anna Frodesiak, CC0.
/// Pond: Alabama Extension, CC0. Groundnut oil cake: Ranjithkumar Murugesan, CC0.
/// Harvest: Benreis, CC0.
class AquaImages {
  static const logo = 'assets/images/icon.png';
  static const pond = 'assets/images/pond.jpg';
  static const catla = 'assets/images/catla.jpg';
  static const rohu = 'assets/images/rohu.jpg';
  static const mrigal = 'assets/images/mrigal.jpg';
  static const catlaNursery = catla;
  static const rohuNursery = rohu;
  static const mrigalNursery = mrigal;
  static const feed = 'assets/images/feed.jpg';
  static const harvest = 'assets/images/harvest.jpg';
}
