import 'package:flutter/material.dart';
import 'package:templates/widgets/home/credit_card.dart';

class Wallet extends StatelessWidget {
  const Wallet({super.key});

  static const name = "wallet";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 30,
          children: [
            CreditCard(width: width),
            CreditCard(width: width),

            SizedBox(
              width: width * .8,
              child: TextButton(
                onPressed: () {},

                child: Text("Add Card", style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
