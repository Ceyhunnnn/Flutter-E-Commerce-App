import 'package:app/constants/color_constant.dart';
import 'package:app/constants/padding_constant.dart';
import 'package:app/extension/context_extension.dart';
import 'package:app/view/fruit/fruit_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class FruitView extends StatefulWidget {
  const FruitView({super.key});

  @override
  State<FruitView> createState() => _FruitViewState();
}

class _FruitViewState extends State<FruitView> {
  FruitViewModel model = FruitViewModel();

  @override
  Widget build(BuildContext context) {
    print(model.fruitList[0].name);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: Padding(
          padding: PaddingConstant.instance.paddingNormal,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset(model.menuName),
                SvgPicture.asset(model.userName)
              ]),
        ),
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
                                crossAxisSpacing: 10,
                                mainAxisSpacing: 20),
                        itemCount: model.fruitList.length,
                        itemBuilder: (BuildContext ctx, index) {
                          return Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: borderColor,
                                style: BorderStyle.solid,
                                width: 1.0,
                              ),
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(model.fruitList[index].photo),
                                Padding(
                                  padding: PaddingConstant
                                      .instance.paddingNormalHorizontal,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        model.fruitList[index].name,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: context.dynamicHeight(0.005),
                                      ),
                                      Text(
                                        model.fruitList[index].desc,
                                        style: TextStyle(
                                            color: descTextColor, fontSize: 11),
                                      ),
                                      SizedBox(
                                        height: context.dynamicHeight(0.03),
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "₺" +
                                                model.fruitList[index].price
                                                    .toString(),
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Container(
                                            width: 36,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                color: green,
                                                style: BorderStyle.solid,
                                                width: 1.0,
                                              ),
                                              color: green,
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                            ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Center(
                                                child: Text(
                                                  "+",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
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
