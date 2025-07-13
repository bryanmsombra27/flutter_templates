import 'package:flutter/material.dart';

class Carousel extends StatefulWidget {
  const Carousel({super.key});

  static const name = "carousel";

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  int _currentPage = 0;
  final List<Widget> _pages = [
    Image.asset("assets/slider-1.jpg", fit: BoxFit.cover),
    Image.asset("assets/slider-2.jpg", fit: BoxFit.cover),
    Image.asset("assets/slider-3.jpg", fit: BoxFit.cover),
  ];

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.sizeOf(context).height;

    return Column(
      children: [
        SizedBox(
          height: height / 2,
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: ClipRRect(
              borderRadius: BorderRadiusGeometry.circular(20),
              child: PageView(
                padEnds: true,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                children: _pages,
              ),
            ),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            _pages.length,
            (index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: _Dot(isActive: index == _currentPage),
            ),
          ),
        ),
      ],
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot({required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        color: isActive ? Theme.of(context).primaryColor : Colors.grey,
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }
}
