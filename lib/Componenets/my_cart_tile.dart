import 'package:flutter/material.dart';
import 'package:food_delivery/Componenets/my_quantity_selector.dart';
import 'package:food_delivery/models/cart_tems.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItems cartItem;
  const MyCartTile({
    super.key,
    required this.cartItem
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child) => Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8),
          ),
          margin: EdgeInsets.symmetric( vertical: 10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                          cartItem.food.ImagePath,
                        height: 100,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(cartItem.food.name),
                        Text(cartItem.food.Price.toString()),
                        SizedBox(height: 20,),
                        MyQuantitySelector(
                            quantity: cartItem.quantity,
                            food: cartItem.food,
                            onDecrement: () {
                              restaurant.removeFromCart(cartItem);
                            },
                            onIncrement: () {
                              restaurant.addToCart(cartItem.food, cartItem.selectedAddons);
                            }
                        ),
                      ],
                    ),
                    Spacer()
                  ],
                ),
              ),
              SizedBox(
                height: cartItem.selectedAddons.isEmpty? 0 : 60,
                child: ListView(
                  padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  scrollDirection: Axis.horizontal,
                  children: cartItem.selectedAddons.map((addon) => FilterChip(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(addon.name),
                          Text(addon.Price.toString())
                        ],
                      ),
                      shape: StadiumBorder(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                        )
                      ),
                      onSelected: (value) {},
                    backgroundColor: Theme.of(context).colorScheme.background,
                    labelStyle: TextStyle(
                        color:  Theme.of(context).colorScheme.inversePrimary,
                        fontSize: 12,
                    ),
                  )).toList(),
                ),
              ),
            ],
          ),
        )
    );
  }
}
