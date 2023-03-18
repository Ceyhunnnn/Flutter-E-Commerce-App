import 'package:app/view/fruit/fruit_model.dart';

class FruitViewModel {
  List<FruitsVegetables> fruitList = [
    FruitsVegetables(
        name: "Banana",
        desc: "by weight ₺1,32 kg",
        price: 2.99,
        photo: "assets/images/banana.png"),
    FruitsVegetables(
        name: "Cabbage",
        desc: "by weight ₺0,82 kg",
        price: 2.99,
        photo: "assets/images/cabbage.png"),
    FruitsVegetables(
        name: "Tomatto",
        desc: "by weight ₺1,32 kg",
        price: 2.99,
        photo: "assets/images/tomatto.png"),
    FruitsVegetables(
        name: "Egg plant",
        desc: "by weight ₺0,82 kg",
        price: 2.99,
        photo: "assets/images/eggplant.png"),
    FruitsVegetables(
        name: "Lettuce",
        desc: "by weight ₺1,32 kg",
        price: 2.99,
        photo: "assets/images/lettuce.png"),
    FruitsVegetables(
        name: "Pottato",
        desc: "by weight ₺1,32 kg",
        price: 2.99,
        photo: "assets/images/pottato.png")
  ];

  String menuName = "assets/images/menu.svg";
  String userName = "assets/images/user.svg";
}
