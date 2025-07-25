import 'package:flutter/material.dart';
import 'package:templates/widgets/custom_floating_button.dart';

class ProductDetails extends StatelessWidget {
  final String title;
  final String img;
  final String tag;
  final double price;

  const ProductDetails({
    super.key,
    required this.title,
    required this.img,
    required this.price,
    required this.tag,
  });

  static const name = "product_details";

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: CustomFloatingButton(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 20,
            children: [
              Hero(
                tag: tag,
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Image.asset(img),
                ),
              ),
              Text(title, style: textTheme.titleLarge),
              Text(
                "\$$price",
                style: textTheme.titleSmall!.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),

              Text(
                "lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, fugiat. lorem  lorem ipsum dolor sit amet consectetur adcing elit. Quisquam, fugiat. lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam, fugiat.",
                style: TextStyle(color: Colors.black54),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
