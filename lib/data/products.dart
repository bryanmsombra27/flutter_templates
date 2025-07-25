import 'package:templates/widgets/product_card.dart';

final List<ProductItem> products = [
  ProductItem(
    category: ProductCategory.tennis,
    product: ProductCard(
      img: "assets/zapatillas-deportivas-2.jpg",
      title: "Tennis Deportivos 4 Life",
      price: 200,
      tag: "4Life",
    ),
  ),
  ProductItem(
    category: ProductCategory.tennis,
    product: ProductCard(
      img: "assets/zapatillas-deportivas.jpg",
      title: "Tennis Deportivos Groove Street",
      price: 350,
      tag: "groove",
    ),
  ),

  ProductItem(
    category: ProductCategory.trajes,
    product: ProductCard(
      img: "assets/traje-2.jpg",
      title: "Saco de trabajo",
      price: 100,
      tag: "corporativo",
    ),
  ),
  ProductItem(
    category: ProductCategory.trajes,
    product: ProductCard(
      img: "assets/traje.jpg",
      title: "Traje Corporativo",
      price: 150,
      tag: "trajecorpoerativo",
    ),
  ),

  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-1.jpg",
      title: "zapato deportivo",
      price: 500,
      tag: "zapatodeportivo",
    ),
  ),
  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-2.jpg",
      title: "zapato ortopedico",
      price: 650,
      tag: "ortopedico",
    ),
  ),
  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-3.jpg",
      title: "Botas tipo tachón",
      price: 450,
      tag: "botastachon",
    ),
  ),
];

class ProductItem {
  final ProductCategory category;
  final ProductCard product;

  ProductItem({required this.category, required this.product});
}

enum ProductCategory { trajes, zapatos, tennis, todos }
