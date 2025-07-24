import 'package:flutter/material.dart';
import 'package:templates/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeApp().getTheme(),
      home: _Home(),
    );
  }
}

class _Home extends StatelessWidget {
  const _Home({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final TextTheme textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text("Shadow", style: textTheme.titleLarge),

                      Text(
                        "Store",
                        style: textTheme.titleLarge,
                        // style: GoogleFonts.robotoCondensed(fontSize: 20),
                      ),
                    ],
                  ),
                  Row(
                    spacing: 40,
                    children: [
                      Icon(Icons.favorite_border),
                      CircleAvatar(
                        backgroundColor: colors.primary,
                        child: Icon(Icons.search, color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),

              ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(20),
                child: Image.asset("assets/promocional.jpg"),
              ),

              Text("Destacados", style: textTheme.titleMedium),
            ],
          ),
        ),
      ),
    );
  }
}
