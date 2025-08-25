import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/store/index_store.dart';

class CustomBanner extends ConsumerWidget {
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
  Widget build(BuildContext context, ref) {
    final double width = MediaQuery.sizeOf(context).width;
    final changePhrase = ref.read(indexStoreProvider.notifier).changeIndex;

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
                GestureDetector(
                  onTap: () {
                    changePhrase();
                  },
                  child: Icon(Icons.refresh, color: Colors.white, size: 30),
                ),
              ],
            ),

            Text(
              content,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),

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
