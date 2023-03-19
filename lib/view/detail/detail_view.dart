import 'package:app/components/appbar.dart';
import 'package:app/extension/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../constants/assets_constant.dart';
import '../../constants/color_constant.dart';
import '../../constants/padding_constant.dart';

class DetailView extends StatefulWidget {
  const DetailView({super.key, required this.fruitDetailList});
  final fruitDetailList;
  @override
  State<DetailView> createState() => _DetailViewState();
}

class _DetailViewState extends State<DetailView> {
  var number = 0;
  @override
  Widget build(BuildContext context) {
    // print(widget.fruitDetailList.name);

    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        titleSpacing: 0,
        title: buildAppBarIcon(
          state: "detail",
        ),
      ),
      body: SafeArea(
          child: Padding(
        padding: PaddingConstant.instance.paddingNormal,
        child: SingleChildScrollView(
          child: Column(
            children: [
              buildProductPhoto(widget: widget),
              buildproductInfo(
                widget: widget,
              ),
              SizedBox(
                height: context.dynamicWidth(0.05),
              ),
              buildProductAbout(widget: widget),
              SizedBox(
                height: context.dynamicWidth(0.1),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₺${widget.fruitDetailList.price}',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(color: descTextColor, spreadRadius: 1),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 5.0, horizontal: 15),
                      child: Row(
                        children: [
                          InkWell(
                              onTap: () {
                                if (number <= 0) {
                                  return;
                                }
                                setState(() {
                                  number--;
                                });
                              },
                              child: Text("-")),
                          SizedBox(
                            width: context.dynamicWidth(0.03),
                          ),
                          Text(
                            "${number}",
                          ),
                          SizedBox(
                            width: context.dynamicWidth(0.03),
                          ),
                          InkWell(
                            onTap: () {
                              setState(() {
                                number++;
                              });
                            },
                            child: Text("+"),
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: green,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        ),
                        shadowColor: Colors.grey,
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Buy now",
                        style: TextStyle(color: Colors.white),
                      ))
                ],
              ),
              Divider()
            ],
          ),
        ),
      )),
    );
  }
}

class buildproductInfo extends StatelessWidget {
  const buildproductInfo({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.fruitDetailList.name,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text(
              "by Farm fresh veg shop",
              style: TextStyle(fontSize: 11, color: descTextColor),
            )
          ],
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: descTextColor, spreadRadius: 1),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(star),
                SizedBox(
                  width: context.dynamicWidth(0.02),
                ),
                Text(
                  widget.fruitDetailList.star,
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class buildProductAbout extends StatelessWidget {
  const buildProductAbout({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: Text(widget.fruitDetailList.about,
                style: TextStyle(
                  letterSpacing: 1.0,
                )))
      ],
    );
  }
}

class buildProductPhoto extends StatelessWidget {
  const buildProductPhoto({
    super.key,
    required this.widget,
  });

  final DetailView widget;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image.asset(
        widget.fruitDetailList.photo,
      ),
    );
  }
}
