import 'package:flutter/widgets.dart';
import 'package:movies_app/core/config/device_size.dart';

class AppTextStyle {
  static TextStyle semiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 18),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold28(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 28),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle semiBold12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle medium14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle medium12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle regular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 14),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 12),
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle regular16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, baseFontSize: 16),
      fontWeight: FontWeight.w400,
    );
  }
}

double getResponsiveFontSize(
  BuildContext context, {
  required double baseFontSize,
}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = baseFontSize * scaleFactor;
  double lowerLimit = baseFontSize * 0.8;
  double upperLimit = baseFontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < DeviceSize.tablet) {
    return width / 550;
  } else if (width < DeviceSize.desktob) {
    return width / 900;
  } else {
    return width / 1400;
  }
}
