import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  static const name = "cart_screen";

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title: Text("My Cart", textAlign: TextAlign.center)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(
            bottom: 10.0,
            right: 10,
            left: 10,
            top: 20,
          ),
          child: Column(
            spacing: 20,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _CartItem(colors: colors, dismissId: "koso_1"),
              _CartItem(colors: colors, dismissId: "koso_2"),
              _CartItem(colors: colors, dismissId: "koso_3"),

              SizedBox(height: 20),
              _coupons(colors: colors),

              Divider(),
              _DeliveryOptions(),
              _CartPricingDetails(title: "Precio", subtitle: "\$59.99"),
              _CartPricingDetails(title: "IVA", subtitle: "\$69.99"),
              _CartPricingDetails(title: "Propina", subtitle: "\$99.99"),
              Divider(),

              _CartPricingDetails(
                title: "SubTotal",
                subtitle: "\$199.99",
                bold: true,
              ),
              _CartPricingDetails(title: "Descuento", subtitle: "\$0.00"),
              _CartPricingDetails(
                title: "Descuento con cupones",
                subtitle: "\$0.00",
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _CartPricingDetails extends StatelessWidget {
  final String title;
  final String subtitle;
  final bool bold;

  const _CartPricingDetails({
    super.key,
    required this.title,
    required this.subtitle,
    this.bold = false,
  });

  @override
  Widget build(BuildContext context) {
    final isBold = bold ? FontWeight.bold : FontWeight.normal;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: TextStyle(fontWeight: isBold)),
        Text(subtitle, style: TextStyle(fontWeight: isBold)),
      ],
    );
  }
}

class _DeliveryOptions extends StatelessWidget {
  const _DeliveryOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Opciones de Entrega",
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),

        Row(
          children: [
            Radio(
              value: 1,

              groupValue: [1, 2],
              onChanged: (value) {
                // setState(() {
                //   _selectedValue = value;
                // });
              },
            ),
            Text("Mostrador"),
          ],
        ),
        Row(
          children: [
            Radio(
              value: 2,

              groupValue: [1, 2],
              onChanged: (value) {
                // setState(() {
                //   _selectedValue = value;
                // });
              },
            ),
            Text("A domicilio"),
          ],
        ),
      ],
    );
  }
}

class _coupons extends StatelessWidget {
  const _coupons({super.key, required this.colors});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      child: TextField(
        decoration: InputDecoration(
          hintText: "Ingresa un cupon",

          border: OutlineInputBorder(),

          contentPadding: EdgeInsets.only(left: 10),

          suffixIcon: TextButton(
            onPressed: () {},

            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(colors.primary),

              padding: WidgetStateProperty.all(EdgeInsets.all(10)),
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              ),
            ),
            child: Text("Aplicar", style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class _CartItem extends StatelessWidget {
  final String dismissId;

  const _CartItem({super.key, required this.colors, required this.dismissId});

  final ColorScheme colors;

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      direction: DismissDirection.endToStart,

      background: Container(
        padding: EdgeInsets.all(10),
        color: Colors.green,
        alignment: Alignment.centerLeft,
        child: Icon(Icons.check_circle, size: 60, color: Colors.white),
      ),
      secondaryBackground: Container(
        padding: EdgeInsets.all(10),
        color: colors.primary,
        alignment: Alignment.centerRight,
        child: Icon(Icons.cancel, size: 60, color: Colors.white),
      ),
      key: Key(dismissId),
      child: SizedBox(
        height: 80,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          spacing: 10,
          children: [
            Expanded(
              child: Row(
                spacing: 10,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.asset(
                      "assets/pizza.png",
                      width: 80,
                      fit: BoxFit.cover,
                      height: double.infinity,
                    ),
                  ),
                  Column(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Pizza de pepperoni"),
                      RatingBar(
                        itemSize: 20,
                        itemCount: 5,
                        initialRating: 2,
                        onRatingUpdate: (rating) {},
                        direction: Axis.horizontal,
                        ratingWidget: RatingWidget(
                          full: Icon(Icons.star, color: colors.primary),
                          half: Icon(Icons.star_half),
                          empty: Icon(Icons.star_border),
                        ),
                      ),

                      Text("\$20.55"),
                    ],
                  ),
                  Row(
                    spacing: 15,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colors.primary,
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.remove_sharp, color: Colors.white),
                      ),
                      Text("2"),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: colors.primary,
                        ),
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.add, color: Colors.white),
                      ),
                    ],
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
