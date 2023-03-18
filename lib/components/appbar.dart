import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../constants/assets_constant.dart';
import '../constants/padding_constant.dart';
import '../view/fruit/fruit_view_model.dart';

class buildAppBarIcon extends StatelessWidget {
  const buildAppBarIcon({
    super.key,
    required this.state,
  });

  final String state;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PaddingConstant.instance.paddingNormal,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        state == "Home" ? SvgPicture.asset(menuName) : Image.asset(backIcon),
        SvgPicture.asset(userName),
      ]),
    );
  }
}
