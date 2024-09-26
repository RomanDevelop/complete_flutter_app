import 'package:flutter/material.dart';
import 'package:amazon_clone_tutorial/features/admin/models/sales.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<Sales> earnings;

  const CategoryProductsChart({
    Key? key,
    required this.earnings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double maxEarning = earnings
        .map((e) => e.earning)
        .reduce((a, b) => a > b ? a : b)
        .toDouble();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: earnings.map((sales) {
        return Column(
          children: [
            Container(
              width: 30,
              height: (sales.earning / maxEarning) * 200, // Нормализация высоты
              color: Colors.blue,
            ),
            SizedBox(height: 8),
            Text(sales.label),
          ],
        );
      }).toList(),
    );
  }
}
