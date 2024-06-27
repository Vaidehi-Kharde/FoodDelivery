import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/Componenets/my_button.dart';
import 'package:food_delivery/Componenets/my_cart_tile.dart';
import 'package:food_delivery/Screens/payment_page.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
        builder: (context, restaurant, child){
          final userCart = restaurant.cart;
          return Scaffold(
            appBar: AppBar(
              title: Text("Cart"),
              actions: [
                IconButton(
                    onPressed: () {
                      showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text("Are you sure you want to clear the cart?"),
                            actions: [
                              TextButton(
                                  onPressed: () => Navigator.pop(context) ,
                                  child: Text("Cancel")
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                    restaurant.clearCart();
                                  },
                                  child: Text("Yes")
                              ),
                            ],
                          )
                      );
                    },
                    icon: Icon(Icons.delete)
                )
              ],
            ),
            body: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      userCart.isEmpty ?
                      Expanded(child: Center(child: Text ("Cart is Empty"))) :
                      Expanded(
                          child: ListView.builder(
                            itemCount: userCart.length,
                              itemBuilder: (context, index) {
                                final cartItem = userCart[index];
                                return MyCartTile(cartItem: cartItem);
                              }
                          )
                      )
                    ],
                  ),
                ),
                MyButton(
                    text: "Check out",
                    onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()))),
                SizedBox(height: 25),
              ],
            ),
          );
        }
    );
  }
}
