import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  static const name = "profile";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final double height = MediaQuery.sizeOf(context).height;
    final double width = MediaQuery.sizeOf(context).width;
    return SingleChildScrollView(
      child: Column(
        spacing: 10,
        children: [
          Container(
            height: height / 12,
            decoration: BoxDecoration(color: Colors.blue),
          ),

          Transform.translate(
            offset: Offset(0, -70),
            child: Column(
              spacing: 10,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: width * .9,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    spacing: 20,
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("assets/ceo-avatar.jpeg"),
                        radius: 30,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 10,
                        children: [
                          Text(
                            "John Doe",
                            style: textTheme.titleLarge!.copyWith(fontSize: 18),
                          ),
                          Text("CEO", style: textTheme.bodySmall),
                        ],
                      ),
                    ],
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Account Details", style: textTheme.bodySmall),
                ),

                SizedBox(
                  height: height / 5,
                  child: ListView.builder(
                    itemCount: 3,

                    itemBuilder: (ctx, index) {
                      return ListTile(
                        leading: Icon(Icons.person),
                        title: Text("My Account", style: textTheme.titleSmall),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Text("Help and Support", style: textTheme.bodySmall),
                ),

                SizedBox(
                  height: height / 5,
                  child: ListView.builder(
                    itemCount: 3,

                    itemBuilder: (ctx, index) {
                      return ListTile(
                        leading: Icon(Icons.help_center),
                        title: Text("Help Center", style: textTheme.titleSmall),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
