import 'package:flutter/material.dart';
import 'package:templates/data/products.dart';
import 'package:templates/themes/theme.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:templates/widgets/custom_floating_button.dart';
import 'package:templates/widgets/product_card.dart';

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
      floatingActionButton: CustomFloatingButton(),
      body: SingleChildScrollView(
        child: SafeArea(
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

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 20,
                    children: [
                      ProductCard(
                        img: "assets/zapatillas-deportivas.jpg",
                        title: "Tennis Deportivos Groove Street",
                        price: 350,
                        tag: "tenis-1",
                      ),
                      ProductCard(
                        img: "assets/zapatillas-deportivas-2.jpg",
                        title: "Tennis Deportivos 4 Life",
                        price: 200,
                        tag: "tenis-2",
                      ),
                      ProductCard(
                        img: "assets/traje.jpg",
                        title: "Traje Corporativo",
                        price: 150,
                        tag: "traje-1",
                      ),
                      ProductCard(
                        img: "assets/traje-2.jpg",
                        title: "Saco de trabajo",
                        price: 100,
                        tag: "traje-2",
                      ),
                    ],
                  ),
                ),

                Categories(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  late ScrollController _scrollController;
  List<ProductItem> items = products;
  ProductCategory currentCategory = ProductCategory.todos;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  void _changeCategory(ProductCategory category) {
    setState(() {
      currentCategory = category;
      if (category == ProductCategory.todos) {
        items = products;
      } else {
        items = products
            .where((product) => product.category == category)
            .toList();
      }
    });

    // Espera un frame y luego hace scroll al inicio
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeOut,
      );
    });
  }

  _changeCategoryButtonStyle(ProductCategory category, ColorScheme colors) {
    return currentCategory == category
        ? WidgetStatePropertyAll(colors.primaryFixedDim)
        : null;
  }

  TextStyle _changeCategoryTextStyle(
    ProductCategory category,
    textTheme,
    ColorScheme colors,
  ) {
    return textTheme.bodyMedium!.copyWith(
      color: currentCategory == category
          ? Colors.white
          : colors.primaryFixedDim,
    );
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;
    final double height = MediaQuery.sizeOf(context).height;
    final TextTheme textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              style: ButtonStyle(
                backgroundColor: _changeCategoryButtonStyle(
                  ProductCategory.todos,
                  colors,
                ),
              ),

              onPressed: () {
                _changeCategory(ProductCategory.todos);
              },
              child: Text(
                "Todos",
                style: _changeCategoryTextStyle(
                  ProductCategory.todos,
                  textTheme,
                  colors,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _changeCategory(ProductCategory.tennis);
              },
              style: ButtonStyle(
                backgroundColor: _changeCategoryButtonStyle(
                  ProductCategory.tennis,
                  colors,
                ),
              ),

              child: Text(
                "Tennis",
                style: _changeCategoryTextStyle(
                  ProductCategory.tennis,
                  textTheme,
                  colors,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _changeCategory(ProductCategory.zapatos);
              },
              style: ButtonStyle(
                backgroundColor: _changeCategoryButtonStyle(
                  ProductCategory.zapatos,
                  colors,
                ),
              ),

              child: Text(
                "Zapatos",
                style: _changeCategoryTextStyle(
                  ProductCategory.zapatos,
                  textTheme,
                  colors,
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                _changeCategory(ProductCategory.trajes);
              },

              style: ButtonStyle(
                backgroundColor: _changeCategoryButtonStyle(
                  ProductCategory.trajes,
                  colors,
                ),
              ),
              child: Text(
                "Trajes",
                style: _changeCategoryTextStyle(
                  ProductCategory.trajes,
                  textTheme,
                  colors,
                ),
              ),
            ),
          ],
        ),

        SizedBox(
          width: width * .9,
          height: height * .35,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            controller: _scrollController,
            itemCount: items.length,
            itemBuilder: (ctx, index) {
              final product = items[index];

              return Row(children: [product.product, SizedBox(width: 20)]);
            },
          ),
        ),
      ],
    );
  }
}
