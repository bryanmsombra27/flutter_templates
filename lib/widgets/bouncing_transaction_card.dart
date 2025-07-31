import 'package:flutter/material.dart';
import 'package:templates/widgets/transaction_card.dart';

class BouncingTransactionCard extends StatefulWidget {
  const BouncingTransactionCard({super.key});

  static const name = "bouncing_transaction_card";

  @override
  State<BouncingTransactionCard> createState() =>
      _BouncingTransactionCardState();
}

class _BouncingTransactionCardState extends State<BouncingTransactionCard> {
  bool _moved = false;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _moved = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.bounceOut,
            top: _moved ? 100 : 0,
            duration: Duration(seconds: 2),
            child: TransactionCard(),
          ),
        ],
      ),
    );
  }
}
