import 'package:app/constants/padding_constant.dart';
import 'package:app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  final String menuName = "assets/images/menu.svg";
  final String userName = "assets/images/user.svg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffe5e5e5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: PaddingConstant.instance.paddingNormal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(menuName),
                SvgPicture.asset(userName)
              ]),
        ),
      ),
      body: SafeArea(
        child: Padding(
            padding: PaddingConstant.instance.paddingNormal,
            child: Column(
              children: const [
                Text("Fruits &\nVegetables",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30))
              ],
            )),
      ),
    );
  }
}
