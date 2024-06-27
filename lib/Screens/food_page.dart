import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Componenets/my_button.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<Addon, bool> selectedAddons = {};

  FoodPage({
    super.key,
    required this.food,
  })
  {
    for (Addon addon in food.availableAddons)
    {
      selectedAddons[addon] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  // final Map<Addon, bool> selectedAddons;/
  void addToCart(Food food, Map<Addon, bool> selectedAddons)
  {
    List<Addon> currentlySelectedAddons = [];
    for (Addon addon in food.availableAddons)
    {
      if (selectedAddons[addon] == true)
        {
          currentlySelectedAddons.add(addon);
        }
    }
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: SingleChildScrollView(
              child: Column(
                children: [
                  Image(image: AssetImage(widget.food.ImagePath)),
                  Padding(
                    padding: const EdgeInsets.all(25),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(widget.food.name, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                        Text(widget.food.description, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Text("Add ons " , style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontWeight: FontWeight.bold, fontSize: 20),),
                        ),
                        Divider(color: Theme.of(context).colorScheme.inversePrimary,),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                  color: Theme.of(context).colorScheme.inversePrimary
                              )
                          ),
                          child: ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: widget.food.availableAddons.length,
                              itemBuilder: (context, index){
                                Addon addon = widget.food.availableAddons[index];
                                return CheckboxListTile(
                                    title: Text(addon.name, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                                    subtitle: Text(addon.Price.toString(), style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary),),
                                    value: widget.selectedAddons[addon],
                                    checkColor: Theme.of(context).colorScheme.tertiary,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        widget.selectedAddons[addon] = value!;
                                      });
                                    });
                              }
                          ),
                        ),
                        SizedBox(height: 20,),
                        MyButton(
                            text: "Add to cart",
                            onTap: () => addToCart(widget.food, widget.selectedAddons))
                      ],
                    ),
                  )
                ],
              ),
            )
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.5,
            child: Container(
              margin: EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.background,
                shape: BoxShape.circle
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_ios_rounded),
                onPressed: () =>Navigator.pop(context),
              ),
            ),
          ),
        )
      ]
    );
  }
}
