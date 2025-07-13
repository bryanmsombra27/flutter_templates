import 'package:flutter/material.dart';

class History extends StatelessWidget {
  const History({super.key});

  static const name = "history";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final TextTheme textTheme = Theme.of(context).textTheme;
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(color: Colors.blue),
            child: Container(
              margin: EdgeInsets.only(bottom: 90),
              child: Center(
                child: SizedBox(
                  width: width * .9,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: const Color.fromARGB(195, 255, 255, 255),
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      contentPadding: EdgeInsets.all(15),
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search",
                    ),
                  ),
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0, -70),
            child: Container(
              width: width * .9,
              padding: EdgeInsets.only(left: 10, top: 40, bottom: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                spacing: 20,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Today", style: textTheme.bodySmall),

                  _Income(textTheme: textTheme),
                  _Income(textTheme: textTheme),
                  _Income(textTheme: textTheme),

                  Text("Yesterday", style: textTheme.bodySmall),

                  _Income(textTheme: textTheme),
                  _Income(textTheme: textTheme),
                  _Income(textTheme: textTheme),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Income extends StatelessWidget {
  const _Income({super.key, required this.textTheme});

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
            radius: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "John Doe",
                style: textTheme.titleLarge!.copyWith(fontSize: 18),
              ),
              Text("CEO", style: textTheme.bodySmall),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "+\$500.00",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
              Text("ganancia", style: textTheme.bodySmall),
            ],
          ),
        ],
      ),
    );
  }
}
