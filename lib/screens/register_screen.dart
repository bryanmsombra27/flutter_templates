import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:templates/screens/layout_screen.dart';
import 'package:templates/store/password_store.dart';

class RegisterScreen extends ConsumerWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    final colors = Theme.of(context).colorScheme;
    final double width = MediaQuery.sizeOf(context).width;
    final toggleVisibility = ref
        .read(passwordStoreProvider.notifier)
        .toggleVisibility;
    final isVisible = ref.watch(passwordStoreProvider);

    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          spacing: 20,
          children: [
            SizedBox(height: 70),

            CircleAvatar(
              backgroundImage: AssetImage("assets/shadow-delivery.jpg"),
              maxRadius: 100,
            ),
            Text(
              "Registrate",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),

            SizedBox(
              width: width * .85,
              child: TextField(
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  hintText: "Email",
                  prefixIcon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
            ),

            SizedBox(
              width: width * .85,
              child: TextField(
                obscureText: isVisible,
                autofocus: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),

                  hintText: "Password",
                  prefixIcon: Icon(isVisible ? Icons.lock : Icons.lock_open),
                  suffixIcon: GestureDetector(
                    onTap: () {
                      toggleVisibility();
                      // setState(() {
                      //   isVisible = !isVisible;
                      // });
                    },
                    child: Icon(
                      isVisible
                          ? Icons.remove_red_eye
                          : Icons.remove_red_eye_outlined,
                    ),
                  ),
                ),
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Checkbox(value: false, onChanged: (value) {}),
                Text("Acepto los términos y condiciones"),
              ],
            ),

            SizedBox(
              width: width * .85,
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(colors.primary),

                  shape: WidgetStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadiusGeometry.circular(10),
                    ),
                  ),
                ),
                onPressed: () {
                  FocusScope.of(context).unfocus();

                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (c) {
                        return LayoutScreen();
                      },
                    ),
                  );
                },
                child: Text(
                  "Registrarse",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
