import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/animate_coordination.dart';
import 'package:templates/widgets/rotate_icon.dart';

class CustomBanner extends StatelessWidget {
  final Color color;
  final String title;
  final String content;

  const CustomBanner({
    super.key,
    required this.color,
    required this.title,
    required this.content,
  });

  static const name = "banner";

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.sizeOf(context).width;

    return Center(
      child: Container(
        width: width * .9,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
          // gradient: LinearGradient(
          //   colors: [Colors.orange, const Color.fromRGBO(255, 224, 178, 1)],
          //   begin: Alignment.bottomRight,
          //   end: Alignment.topLeft,
          // ),
        ),
        // foregroundDecoration: BoxDecoration(

        // ),
        child: Column(
          spacing: 20,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                // Icon(Icons.fireplace, color: Colors.white, size: 30),
                Text("🔥", style: TextStyle(fontSize: 26, color: Colors.white)),
                Text(
                  title,

                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                RotatingIconButton(),
              ],
            ),

            _FadeText(content: content),

            TextButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.white24),
              ),
              child: Text(
                "Leve la nieve",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _FadeText extends ConsumerStatefulWidget {
  const _FadeText({super.key, required this.content});

  final String content;

  @override
  ConsumerState<_FadeText> createState() => _FadeTextState();
}

class _FadeTextState extends ConsumerState<_FadeText>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 800),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Escucha cambios en el trigger
    final trigger = ref.watch(animateCoordinationProvider);

    // Cada vez que cambie el trigger → ejecuta animación
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (trigger > 0) {
        _controller.forward(from: 0);
      }
    });

    return FadeTransition(
      opacity: TweenSequence([
        TweenSequenceItem(
          tween: Tween(begin: 1.0, end: 0.0),
          weight: 50,
        ), // fade out
        TweenSequenceItem(
          tween: Tween(begin: 0.0, end: 1.0),
          weight: 50,
        ), // fade in
      ]).animate(_controller),
      child: Text(
        widget.content,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
