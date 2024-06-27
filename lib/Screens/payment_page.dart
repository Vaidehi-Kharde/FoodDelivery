import 'package:flutter/material.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:food_delivery/Componenets/my_button.dart';
import 'package:food_delivery/Screens/delivery_progress_page.dart';

class PaymentPage extends StatefulWidget {

  PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String cardNumber = "";

  String expiryDate = "";

  String cardHolderName = "";

  String cvvCode = "";

  bool isCvvFocused = false;

  void userTappedPay(){
    // if (formKey.currentState!.validate()){
    if(true){
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text("Confirm payment"),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Text("Card Number: $cardNumber"),
                  Text("Card Holder Name: $cardHolderName"),
                  Text("Expiry Date: $expiryDate"),
                  Text("CVV: $cvvCode")
                ],
              ),
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text ("No"),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DeliveryProgressPage()));
                  },
                  child: Text ("Yes"),
              )
            ],
          )
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.primary,
        title: Text("Check out"),
      ),
      body: Column(
        children: [
            CreditCardWidget(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                showBackView: isCvvFocused,
                onCreditCardWidgetChange: (p0) {}
            ),
            CreditCardForm(
                cardNumber: cardNumber,
                expiryDate: expiryDate,
                cardHolderName: cardHolderName,
                cvvCode: cvvCode,
                onCreditCardModelChange: (data) {
                  setState(() {
                    cardNumber = data.cardNumber;
                    expiryDate = data.expiryDate;
                    cardHolderName = data.cardHolderName;
                    cvvCode = data.cvvCode;
                  });
                },
                formKey: formKey),
            Spacer(),
            MyButton(
                text: "Pay Now",
                onTap: userTappedPay,
            ),
          SizedBox(height: 25),
        ],
      ),
    );
  }
}
