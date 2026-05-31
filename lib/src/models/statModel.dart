import 'package:flutter/material.dart';

class StatModel {
  final IconData icon;
  final String value;
  final String label;

  const StatModel({
    required this.icon,
    required this.value,
    required this.label,
  });

  static const List<StatModel> stats = [
    StatModel(
      icon: Icons.rocket_launch_rounded,
      value: '3+',
      label: 'Projects',
    ),
    StatModel(
      icon: Icons.calendar_month_rounded,
      value: '1.5 +',
      label: 'Years Experience',
    ),
    StatModel(
      icon: Icons.code_rounded,
      value: '20K +',
      label: 'Lines of Code',
    ),
    StatModel(
      icon: Icons.star_outline_rounded,
      value: '100%',
      label: 'Positive Feedback',
    ),
  ];
}
