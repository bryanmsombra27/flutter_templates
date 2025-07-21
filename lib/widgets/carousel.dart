import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/carousel_store.dart';
import "package:templates/store/images.dart";

class Carousel extends ConsumerStatefulWidget {
  const Carousel({super.key});

  static const name = "carousel";

  @override
  ConsumerState<Carousel> createState() => _CarouselState();
}

class _CarouselState extends ConsumerState<Carousel> {
  @override
  Widget build(BuildContext context) {
    final changeIndex = ref.read(carouselStateProvider.notifier).changeIndex;

    return Column(
      children: [
        Expanded(
          child: PageView(
            padEnds: true,
            onPageChanged: (index) {
              changeIndex(index);
            },
            children: sliderPages,
          ),
        ),
      ],
    );
  }
}
