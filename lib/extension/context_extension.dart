import 'package:flutter/material.dart';

extension ScreenExtension on BuildContext {
  double dynamicWidth(double val) => MediaQuery.of(this).size.width * val;
  double dynamicHeight(double val) => MediaQuery.of(this).size.height * val;
}

// ignore: camel_case_extensions
extension customText on BuildContext {
  TextStyle customTextStyle(color, size) => Theme.of(this)
      .textTheme
      .displaySmall!
      .copyWith(color: color, fontSize: size, fontWeight: FontWeight.w300);
}
