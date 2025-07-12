import 'package:flutter/material.dart';
import 'package:templates/widgets/home/index.dart';

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
      bottomNavigationBar: CustomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Welcome(height: height, colors: colors, textTheme: textTheme),

            SizedBox(height: 20),

            Transform.translate(
              offset: Offset(0, -60),
              transformHitTests: true,
              child: Column(
                spacing: 10,
                children: [
                  FloatingDetails(
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
                  CreditCard(width: width),
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

                  TransferContacts(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
