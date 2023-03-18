import 'package:app/constants/color_constant.dart';
import 'package:app/constants/padding_constant.dart';
import 'package:app/extension/context_extension.dart';
import 'package:app/view/fruit/fruit_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../components/appbar.dart';
import '../../components/card.dart';

class FruitView extends StatefulWidget {
  const FruitView({super.key});

  @override
  State<FruitView> createState() => _FruitViewState();
}

class _FruitViewState extends State<FruitView> {
  FruitViewModel model = FruitViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: buildAppBarIcon(state: "Home"),
      ),
      body: SafeArea(
        child: Padding(
            padding: PaddingConstant.instance.paddingNormal,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text("Fruits &\nVegetables",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30)),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: PaddingConstant.instance.paddingNormal,
                    child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithMaxCrossAxisExtent(
                                maxCrossAxisExtent: 200,
                                mainAxisExtent: 220,
                                crossAxisSpacing: 30,
                                mainAxisSpacing: 20),
                        itemCount: model.fruitList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return buildFruitCard(
                            model: model,
                            index: index,
                          );
                        }),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
