import 'package:flutter/material.dart';

class Wallet extends StatelessWidget {
  final String title;
  final double quantity;
  final List<Widget> children;

  const Wallet({
    super.key,
    required this.title,
    required this.quantity,
    required this.children,
  });

  static const name = "wallet";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;

    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: height * .25,
      decoration: BoxDecoration(
        color: colors.primary,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Icon(
                Icons.account_balance_wallet_outlined,
                size: 120,
                color: Colors.white,
              ),
              Column(
                spacing: 20,
                children: [
                  SizedBox(height: 1),
                  Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  Text(
                    "\$$quantity",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
