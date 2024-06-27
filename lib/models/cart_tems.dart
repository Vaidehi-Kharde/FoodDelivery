import 'package:food_delivery/models/food.dart';

class CartItems {
  Food food;
  List<Addon> selectedAddons;
  int quantity = 1;

  CartItems({
    required this.food,
    required this.selectedAddons,
  });

  double get totalPrice {
    double addonPrice = selectedAddons.fold(0.0, (sum, addon) => sum + addon.Price);
    return (food.Price + addonPrice) * quantity;
  }
}