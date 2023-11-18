import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    Color color;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigation Second Screen Sely'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade500,
              ),
              child: const Text('Pink'),
              onPressed: () {
                color = Color(0xFFFFC5C5); // Warna Pink
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade500,
              ),
              child: const Text('Green'),
              onPressed: () {
                color = Color(0xFFB5CB99); // Warna Hijau
                Navigator.pop(context, color);
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.grey.shade500,
              ),
              child: const Text('Brown'),
              onPressed: () {
                color = Color(0xFFEADBC8); // Warna Coklat
                Navigator.pop(context, color);
              },
            ),
          ],
        ),
      ),
    );
  }
}