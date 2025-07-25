import 'package:templates/widgets/product_card.dart';

final List<ProductItem> products = [
  ProductItem(
    category: ProductCategory.tennis,
    product: ProductCard(
      img: "assets/zapatillas-deportivas-2.jpg",
      title: "Tennis Deportivos 4 Life",
      price: 200,
    ),
  ),
  ProductItem(
    category: ProductCategory.tennis,
    product: ProductCard(
      img: "assets/zapatillas-deportivas.jpg",
      title: "Tennis Deportivos Groove Street",
      price: 350,
    ),
  ),

  ProductItem(
    category: ProductCategory.trajes,
    product: ProductCard(
      img: "assets/traje-2.jpg",
      title: "Saco de trabajo",
      price: 100,
    ),
  ),
  ProductItem(
    category: ProductCategory.trajes,
    product: ProductCard(
      img: "assets/traje.jpg",
      title: "Traje Corporativo",
      price: 150,
    ),
  ),

  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-1.jpg",
      title: "zapato deportivo",
      price: 500,
    ),
  ),
  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-2.jpg",
      title: "zapato ortopedico",
      price: 650,
    ),
  ),
  ProductItem(
    category: ProductCategory.zapatos,
    product: ProductCard(
      img: "assets/zapatos-3.jpg",
      title: "Botas tipo tachón",
      price: 450,
    ),
  ),
];

class ProductItem {
  final ProductCategory category;
  final ProductCard product;

  ProductItem({required this.category, required this.product});
}

enum ProductCategory { trajes, zapatos, tennis, todos }
