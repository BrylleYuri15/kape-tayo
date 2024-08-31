import 'package:coffee_app_ui/constants/constants.dart';

class Coffee {
  final String images;
  final String title;
  final String subTitle;
  final String price;
  final String rating;

  Coffee({
    required this.images,
    required this.title,
    required this.subTitle,
    required this.price,
    required this.rating,
  });
}

List<Coffee> coffee = [
  Coffee(
    images: AppImages.coffee1,
    title: "Cappuccino",
    subTitle: "With Milk",
    price: "129.00",
    rating: "",
  ),
  Coffee(
    images: AppImages.coffee8,
    title: "Espresso",
    subTitle: "With Chocolate",
    price: "130.0",
    rating: "",
  ),
  Coffee(
    images: AppImages.coffee3,
    title: "Latte",
    subTitle: "With Cream",
    price: "120.00",
    rating: "",
  ),
  Coffee(
    images: AppImages.coffee1,
    title: "Ice Coffee",
    subTitle: "With Cream",
    price: "149.00",
    rating: "",
  ),
];
