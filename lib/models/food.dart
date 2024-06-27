class Food{
  final String name;
  final String description;
  final String ImagePath;
  final double Price;
  final FoodCategory category;
  List<Addon> availableAddons;

  Food({
    required this.name,
    required this.description,
    required this.ImagePath,
    required this.Price,
    required this.category,
    required this.availableAddons,
  });
}

enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks
}

class Addon {
  String name;
  double Price;
  Addon({
    required this.name,
    required this.Price
  });
}