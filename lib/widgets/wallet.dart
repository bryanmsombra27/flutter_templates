import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/wallet_store.dart';

class Wallet extends ConsumerWidget {
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
  Widget build(BuildContext context, ref) {
    final double height = MediaQuery.sizeOf(context).height;
    final colors = Theme.of(context).colorScheme;

    final isActive = ref.watch(walletStoreProvider);

    return Container(
      margin: EdgeInsets.only(top: 20),
      width: double.infinity,
      height: height * .25,
      decoration: BoxDecoration(
        color: isActive ? colors.primary : Colors.grey,
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
