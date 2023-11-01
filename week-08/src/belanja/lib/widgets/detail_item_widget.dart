import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';

class DetailItemWidget extends StatelessWidget {
  final Item item;

  const DetailItemWidget({required this.item, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Hero(
          tag: 'productImage${item.name}',
          child: AspectRatio(
            aspectRatio: 1.5,
            child: Image.asset(item.imageUrl),
          ),
        ),
        const SizedBox(height: 16),
        Text(
          '${item.name}',
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
        const SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Rp. ${item.price}',
              style: const TextStyle(
                color: Colors.deepOrange,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                  size: 20,
                ),
                Text(
                  item.rating.toString(),
                  style: const TextStyle(
                    color: Colors.orange,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 8),
        Text(
          'Stok: ${item.stok}',
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 16,
          ),
        ),
      ],
    );
  }
}