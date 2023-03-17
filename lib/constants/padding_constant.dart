import 'package:flutter/material.dart';

class PaddingConstant {
  static PaddingConstant instance = PaddingConstant._init();
  PaddingConstant._init();

  final paddingLow = EdgeInsets.all(8);
  final paddingNormal = EdgeInsets.all(16);
  final paddingHight = EdgeInsets.all(20);
  final paddingLowHorizontal = EdgeInsets.symmetric(horizontal: 8);
  final paddingNormalHorizontal = EdgeInsets.symmetric(horizontal: 16);
  final paddingHightHorizontal = EdgeInsets.symmetric(horizontal: 20);
}
//Property tarafında kullanımı 
// PaddingConstants.instance.paddingNormal, 