import 'package:app/extension/context_extension.dart';
import 'package:app/view/detail/detail_view.dart';
import 'package:flutter/material.dart';
import '../constants/color_constant.dart';
import '../constants/padding_constant.dart';
import '../view/fruit/fruit_view_model.dart';

class buildFruitCard extends StatelessWidget {
  const buildFruitCard({
    super.key,
    required this.model,
    required this.index,
  });

  final FruitViewModel model;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: borderColor,
          style: BorderStyle.solid,
          width: 1.0,
        ),
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DetailView()));
              },
              child: Image.asset(model.fruitList[index].photo)),
          Padding(
            padding: PaddingConstant.instance.paddingNormalHorizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  model.fruitList[index].name,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 15),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.005),
                ),
                Text(
                  model.fruitList[index].desc,
                  style: TextStyle(color: descTextColor, fontSize: 11),
                ),
                SizedBox(
                  height: context.dynamicHeight(0.005),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "₺${model.fruitList[index].price}",
                      style: const TextStyle(fontWeight: FontWeight.bold),
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
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Center(
                          child: Text(
                            "+",
                            style: TextStyle(fontSize: 20, color: Colors.white),
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
  }
}
