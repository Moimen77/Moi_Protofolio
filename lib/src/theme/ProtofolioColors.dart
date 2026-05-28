import 'package:flutter/material.dart';

class PortfolioColors extends ThemeExtension<PortfolioColors> {
  const PortfolioColors({
    required this.background,
    required this.surface,
    required this.card,
    required this.primaryGradientStart,
    required this.primaryGradientEnd,
    required this.glowPurple,
    required this.glowBlue,
    required this.border,
    required this.glassBorder,
    required this.textPrimary,
    required this.textSecondary,
    required this.textMuted,
    required this.github,
    required this.linkedin,
    required this.whatsapp,
  });

  final Color background;
  final Color surface;
  final Color card;

  final Color primaryGradientStart;
  final Color primaryGradientEnd;

  final Color glowPurple;
  final Color glowBlue;

  final Color border;
  final Color glassBorder;

  final Color textPrimary;
  final Color textSecondary;
  final Color textMuted;

  final Color github;
  final Color linkedin;
  final Color whatsapp;

  @override
  PortfolioColors copyWith({
    Color? background,
    Color? surface,
    Color? card,
    Color? primaryGradientStart,
    Color? primaryGradientEnd,
    Color? glowPurple,
    Color? glowBlue,
    Color? border,
    Color? glassBorder,
    Color? textPrimary,
    Color? textSecondary,
    Color? textMuted,
    Color? github,
    Color? linkedin,
    Color? whatsapp,
  }) {
    return PortfolioColors(
      background: background ?? this.background,
      surface: surface ?? this.surface,
      card: card ?? this.card,
      primaryGradientStart: primaryGradientStart ?? this.primaryGradientStart,
      primaryGradientEnd: primaryGradientEnd ?? this.primaryGradientEnd,
      glowPurple: glowPurple ?? this.glowPurple,
      glowBlue: glowBlue ?? this.glowBlue,
      border: border ?? this.border,
      glassBorder: glassBorder ?? this.glassBorder,
      textPrimary: textPrimary ?? this.textPrimary,
      textSecondary: textSecondary ?? this.textSecondary,
      textMuted: textMuted ?? this.textMuted,
      github: github ?? this.github,
      linkedin: linkedin ?? this.linkedin,
      whatsapp: whatsapp ?? this.whatsapp,
    );
  }

  @override
  PortfolioColors lerp(
    covariant ThemeExtension<PortfolioColors>? other,
    double t,
  ) {
    if (other is! PortfolioColors) {
      return this;
    }

    return PortfolioColors(
      background: Color.lerp(background, other.background, t)!,
      surface: Color.lerp(surface, other.surface, t)!,
      card: Color.lerp(card, other.card, t)!,
      primaryGradientStart: Color.lerp(
        primaryGradientStart,
        other.primaryGradientStart,
        t,
      )!,
      primaryGradientEnd: Color.lerp(
        primaryGradientEnd,
        other.primaryGradientEnd,
        t,
      )!,
      glowPurple: Color.lerp(glowPurple, other.glowPurple, t)!,
      glowBlue: Color.lerp(glowBlue, other.glowBlue, t)!,
      border: Color.lerp(border, other.border, t)!,
      glassBorder: Color.lerp(
        glassBorder,
        other.glassBorder,
        t,
      )!,
      textPrimary: Color.lerp(textPrimary, other.textPrimary, t)!,
      textSecondary: Color.lerp(
        textSecondary,
        other.textSecondary,
        t,
      )!,
      textMuted: Color.lerp(textMuted, other.textMuted, t)!,
      github: Color.lerp(github, other.github, t)!,
      linkedin: Color.lerp(linkedin, other.linkedin, t)!,
      whatsapp: Color.lerp(whatsapp, other.whatsapp, t)!,
    );
  }

  static const dark = PortfolioColors(
    background: Color(0xff070B1A),
    surface: Color(0xff0F172A),
    card: Color(0xff131C31),
    primaryGradientStart: Color(0xff7C3AED),
    primaryGradientEnd: Color(0xff3B82F6),
    glowPurple: Color(0x667C3AED),
    glowBlue: Color(0x663B82F6),
    border: Color(0xff2A2F45),
    glassBorder: Color(0x22FFFFFF),
    textPrimary: Colors.white,
    textSecondary: Color(0xffB6B6C2),
    textMuted: Color(0xff6B7280),
    github: Colors.white,
    linkedin: Color(0xff0A66C2),
    whatsapp: Color(0xff25D366),
  );

  static const light = PortfolioColors(
    background: Color(0xffF8FAFC),
    surface: Color(0xffFFFFFF),
    card: Color(0xffFFFFFF),
    primaryGradientStart: Color(0xff7C3AED),
    primaryGradientEnd: Color(0xff2563EB),
    glowPurple: Color(0x337C3AED),
    glowBlue: Color(0x332563EB),
    border: Color(0xffE2E8F0),
    glassBorder: Color(0x22000000),
    textPrimary: Color(0xff0F172A),
    textSecondary: Color(0xff475569),
    textMuted: Color(0xff94A3B8),
    github: Color(0xff0F172A),
    linkedin: Color(0xff0A66C2),
    whatsapp: Color(0xff25D366),
  );
}
