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
      body: SizedBox(
        height: height,
        child: Stack(
          children: [
            _Welcome(height: height, colors: colors, textTheme: textTheme),

            SizedBox(height: 20),
            _floatingDetails(
              height: height,
              width: width,
              textTheme: textTheme,
            ),
            Positioned(
              height: (height / 4 - 85) * 6,

              child: Container(
                padding: EdgeInsets.all(20),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Your Card", style: textTheme.titleLarge),
                    TextButton(onPressed: () {}, child: Text("See all")),
                  ],
                ),
              ),
            ),
          ],
        ),
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
    return Positioned(
      top: height / 4 - 80,
      left: width / 20,
      child: Container(
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
