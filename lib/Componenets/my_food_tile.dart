import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final void Function()? onTap;
  const FoodTile({
    super.key,
    required this.food,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(food.name, style: TextStyle( color: Theme.of(context).colorScheme.primary),),
                        Text(food.Price.toString(), style: TextStyle( color: Theme.of(context).colorScheme.primary),),
                        Text(food.description, style: TextStyle( color: Theme.of(context).colorScheme.primary),),
                      ],
                    )
                ),
                ClipRRect(
                    child: Image.asset(food.ImagePath, height: 120, width: 80,),
                    borderRadius: BorderRadius.circular(20),
                ),
              ],
            ),
          ),
        ),
        Divider(
          color: Theme.of(context).colorScheme.inversePrimary,
          endIndent: 25,
        ),
      ],
    );
  }
}
