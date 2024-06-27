import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_delivery/models/cart_tems.dart';
import 'package:intl/intl.dart';

import 'food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_1.png",
        Price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_2.png",
        Price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_3.png",
        Price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_4.png",
        Price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_5.png",
        Price: 0.99,
        category: FoodCategory.burgers,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),

    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_7.png",
        Price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_7.png",
        Price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_8.png",
        Price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_9.png",
        Price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_10.png",
        Price: 0.99,
        category: FoodCategory.desserts,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),

    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_11.png",
        Price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_12.png",
        Price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_13.png",
        Price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_14.png",
        Price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_15.png",
        Price: 0.99,
        category: FoodCategory.drinks,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),

    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_16.png",
        Price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_17.png",
        Price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_18.png",
        Price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_19.png",
        Price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_20.png",
        Price: 0.99,
        category: FoodCategory.salads,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),

    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_21.png",
        Price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_22.png",
        Price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_23.png",
        Price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_24.png",
        Price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
    Food(
        name: "Classic Cheese Burger",
        description: "A juicy beef patty with melted cheddar, lettuce, tomato and a hint of onion and pickle",
        ImagePath: "Images/img_25.png",
        Price: 0.99,
        category: FoodCategory.sides,
        availableAddons: [
          Addon(name: "Extra Cheese", Price: 0.99),
          Addon(name: "Bacon", Price: 1.99),
          Addon(name: "Avocado", Price: 2.99)
        ]
    ),
  ];

  List<Food> get menu => _menu;
  List<CartItems> get cart => _cart;
  final List<CartItems> _cart = [];

  String _deliveryAddress = '99 Hollywood v';

  String get deliveryAddress => _deliveryAddress;

  void addToCart(Food food, List<Addon> selectedAddons) {
    CartItems? cartItem = _cart.firstWhereOrNull((item){
      bool isSameFood = item.food == food;
      bool isSameAddons = ListEquality().equals(item.selectedAddons, selectedAddons);
      return isSameFood && isSameAddons;
    });

    if (cartItem != null) cartItem.quantity++;
    else
    {
      _cart.add(
        CartItems(
            food: food,
            selectedAddons: selectedAddons)
      );
    }
    notifyListeners();
  }

  void removeFromCart(CartItems cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1)
    {
      if (_cart[cartIndex].quantity > 1){
        _cart[cartIndex].quantity--;
      }
      else
        _cart.removeAt(cartIndex);
    }
    notifyListeners();
  }

  double getTotalPrice() {
    double total = 0.0;
    for (CartItems cartItem in _cart)
    {
      double itemTotal = cartItem.food.Price;

      for (Addon addon in cartItem.selectedAddons)
      {
        itemTotal += addon.Price;
      }

      total += itemTotal*cartItem.quantity;
    }
    return total;
  }

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItems cartItems in _cart){
      totalItemCount += cartItems.quantity;
    }
    return totalItemCount;
  }

  void clearCart() {
    _cart.clear();
    notifyListeners();
  }

  void updateDeliveryAddress(String newAddress)
  {
    _deliveryAddress = newAddress;
    notifyListeners();
  }

  String displayCartReceipt()
  {
    final receipt = StringBuffer();
    receipt.writeln("Here's your receipt");
    receipt.writeln();

    String formattedDate = DateFormat("yyyy-MM-dd HH:mm:ss").format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("-----------");

    for (final cartItem in _cart)
    {
      receipt.writeln(
        "${cartItem.quantity} X ${cartItem.food.name} - ${_formatPrice(cartItem.food.Price)}");
      if (cartItem.selectedAddons.isNotEmpty)
      {
        receipt.writeln("Add ons - ${_formatAddons(cartItem.selectedAddons)}");
      }
    }

    receipt.writeln('---------');
    receipt.writeln();
    receipt.writeln("Total items: ${getTotalItemCount()}");
    receipt.writeln("Total Price: ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln("Delivering to: $deliveryAddress");

    return receipt.toString();
  }

  String _formatPrice(double Price)
  {
    return "\$${Price.toStringAsFixed(2)}";
  }

  String _formatAddons(List<Addon> addons)
  {
    return addons.map((addon) => "${addon.name} (${_formatPrice(addon.Price)})").join(', ');
  }
}