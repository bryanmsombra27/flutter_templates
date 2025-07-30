import 'package:flutter/material.dart';

class CardDetailsTab extends StatelessWidget {
  const CardDetailsTab({super.key});

  static const name = "card_details_tab";

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          bottom: TabBar(
            tabs: [
              Tab(text: "Contacto"),
              Tab(text: "Descripción"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    spacing: 10,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/ceo.png"),
                        maxRadius: 30,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        spacing: 2,
                        children: [
                          Text(
                            "Jhon Doe",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                            ),
                          ),
                          Text("Dueño"),
                        ],
                      ),
                    ],
                  ),

                  Row(
                    spacing: 20,
                    children: [Icon(Icons.chat), Icon(Icons.call)],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "lorem ipsum dolor sit amet consectetur adipisicing elit. lorem ipsum dolor sit amet consectetur adipisicing elit.  lorem ipsum dolor sit amet consectetur adipisicing elit.  ",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
