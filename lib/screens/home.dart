import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  static const name = "home";

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    final colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            _Welcome(height: height, colors: colors, textTheme: textTheme),

            SizedBox(height: 20),

            Transform.translate(
              offset: Offset(0, -60),
              transformHitTests: true,
              child: Column(
                spacing: 10,
                children: [
                  _floatingDetails(
                    height: height,
                    width: width,
                    textTheme: textTheme,
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    width: width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Your Card", style: textTheme.titleLarge),
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "See all",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  _CreditCard(width: width),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Send Again",
                          style: textTheme.titleLarge,
                          textAlign: TextAlign.start,
                        ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          backgroundColor: Colors.blue,
                          child: Icon(Icons.add, color: Colors.white, size: 30),
                        ),
                        CircleAvatar(
                          maxRadius: 30,

                          backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
                        ),
                        CircleAvatar(
                          maxRadius: 30,

                          backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
                        ),
                        CircleAvatar(
                          maxRadius: 30,

                          backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
                        ),
                        CircleAvatar(
                          maxRadius: 30,

                          backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CreditCard extends StatelessWidget {
  const _CreditCard({super.key, required this.width});

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      width: width * .9,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.credit_card),
              Text(
                "VISA",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
          SizedBox(height: 20),

          Text("Card Number"),
          Text(
            "2148 3214 9812 2687",
            style: TextStyle(fontWeight: FontWeight.bold, wordSpacing: 5),
          ),

          SizedBox(height: 20),
          Text("Jhon Doe"),
        ],
      ),
    );
  }
}

class _floatingDetails extends StatelessWidget {
  const _floatingDetails({
    super.key,
    required this.height,
    required this.width,
    required this.textTheme,
  });

  final double height;
  final double width;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      width: width * .9,
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Your balance"),
          Text("\$70,501,00", style: textTheme.titleLarge),
          SizedBox(height: 5),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                _IconBank(title: "Transfer"),
                _IconBank(title: "Request"),
                _IconBank(title: "Top Up"),
                _IconBank(title: "History"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _IconBank extends StatelessWidget {
  final String title;
  const _IconBank({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Icon(Icons.arrow_upward, color: Colors.white),
        ),
        Text(
          title,
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
        ),
      ],
    );
  }
}

class _Welcome extends StatelessWidget {
  const _Welcome({
    super.key,
    required this.height,
    required this.colors,
    required this.textTheme,
  });

  final double height;
  final ColorScheme colors;
  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: height * .2,
      color: colors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text("Welcome back", style: textTheme.bodyMedium),
              Text("Jhon Doe", style: textTheme.titleMedium),
            ],
          ),
          Icon(Icons.notifications, size: 40, color: Colors.white),
        ],
      ),
    );
  }
}
