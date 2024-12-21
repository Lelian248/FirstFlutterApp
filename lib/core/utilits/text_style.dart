import 'package:first_app/core/utilits/colors.dart';
import 'package:flutter/rendering.dart';

TextStyle getTitelTextstyle(
    {double? fontsize, Color? fontColor, FontWeight? fontwieght}) {
  return TextStyle(
    fontSize: fontsize ?? 30,
    fontWeight: fontwieght ?? FontWeight.bold,
    color: fontColor ?? AppColor.primaryColor,
  );
}

TextStyle getSmallTextstyle(
    {double? fontsize, Color? fontColor, FontWeight? fontwieght}) {
  return TextStyle(
    fontSize: fontsize ?? 18,
    fontWeight: fontwieght ?? FontWeight.normal,
    color: fontColor ?? AppColor.primaryColor,
  );
}

TextStyle getBodyTextstyle(
    {double? fontsize, Color? fontColor, FontWeight? fontwieght}) {
  return TextStyle(
    fontSize: fontsize ?? 24,
    fontWeight: fontwieght ?? FontWeight.normal,
    color: fontColor ?? AppColor.primaryColor,
  );
}
