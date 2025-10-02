import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    required this.onPressed,
    required this.label,
    super.key,
    this.icon,
    this.isSvg = false,
  });

  final VoidCallback onPressed;
  final dynamic icon;
  final String label;
  final bool isSvg;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      icon: isSvg
          ? SvgPicture.asset(icon!, height: 24)
          : Icon(icon as IconData?),
      label: Text(label),
      style: ElevatedButton.styleFrom(
        minimumSize: const Size(double.infinity, 50),
      ),
    );
  }
}
