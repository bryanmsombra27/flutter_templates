import 'package:flutter/material.dart';
import 'package:templates/widgets/transaction_card.dart';

class ScaleTransactionCard extends StatefulWidget {
  const ScaleTransactionCard({super.key});

  static const name = "scale_transaction_card";

  @override
  State<ScaleTransactionCard> createState() => _ScaleTransactionCardState();
}

class _ScaleTransactionCardState extends State<ScaleTransactionCard> {
  double scale = 0.1;

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(milliseconds: 500), () {
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        scale = 1;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      scale: scale,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeOutBack,
      child: TransactionCard(),
    );
  }
}
