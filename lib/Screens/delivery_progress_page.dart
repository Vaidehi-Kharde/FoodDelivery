import 'package:flutter/material.dart';
import 'package:food_delivery/Componenets/my_receipt.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/services/Database/firestore.dart';
import 'package:provider/provider.dart';

class DeliveryProgressPage extends StatefulWidget {
  const DeliveryProgressPage({super.key});

  @override
  State<DeliveryProgressPage> createState() => _DeliveryProgressPageState();
}

class _DeliveryProgressPageState extends State<DeliveryProgressPage> {
  FirestoreService db = FirestoreService();

  @override
  void initState() {
    super.initState();

    String receipt = context.read<Restaurant>().displayCartReceipt();
    db.saveOrderToDatabase(receipt);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Delivery in Progress"),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(context),
      body: Column(
        children: [
          MyReceipt(),
        ],
      )
    );
  }

  Widget _buildBottomNavigationBar(BuildContext context)
  {
    return SingleChildScrollView(
      child: Container(
        height: 100,
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50)
            )
        ),
        padding: EdgeInsets.all(25),
        child: Row(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).colorScheme.background,
              ),
              child: IconButton(
                icon: Icon(Icons.person),
                onPressed: () {},
              )
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Mika koka",
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                Text(
                  "Driver",
                  style: TextStyle(
                    fontSize: 18,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )
              ],
            ),
            Spacer(),
            Row(
              children: [
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.background,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.message),
                      onPressed: () {},
                    )
                ),
                SizedBox(width: 10,),
                Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.background,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.call, color: Colors.green,),
                      onPressed: () {},
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
