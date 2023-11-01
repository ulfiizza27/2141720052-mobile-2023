import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:belanja/widgets/card_widget.dart';
import 'package:belanja/widgets/footer_widget.dart'; // Import footer widget

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(name: 'Sugar', price: 21000, imageUrl: '../assets/sugar.jpg', stok: 51, rating: 4.3),
    Item(name: 'Salt', price: 2000, imageUrl: '../assets/salt.jpg', stok: 44, rating: 4.5),
    Item(name: 'Tepung', price: 13000, imageUrl: '../assets/tepung.jpg', stok: 44, rating: 4.7),
    Item(name: 'Minyak', price: 41000, imageUrl: '../assets/minyak.jpg', stok: 44, rating: 4.4),
    Item(name: 'Saos Sambal', price: 17500, imageUrl: '../assets/saos.jpg', stok: 44, rating: 4.6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Shopping List'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.75,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          final item = items[index];
          return CardWidget(item: item);
        },
      ),
      bottomNavigationBar: FooterWidget(), // Gunakan FooterWidget sebagai bottomNavigationBar
    );
  }
}
