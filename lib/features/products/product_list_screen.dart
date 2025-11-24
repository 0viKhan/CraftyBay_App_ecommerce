import 'package:e_commerce_shop/features/shared/presentation/widgets/product_card.dart';
import 'package:flutter/cupertino.dart' show Placeholder;
import 'package:flutter/material.dart';

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.categoryname});
  static const String name='/product-list';
  final String categoryname;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryname),
  
      ),
      body:GridView.builder(
        itemCount: 10,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount:3,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          childAspectRatio: 0.7,

        ), // Number of items
        itemBuilder: (context, index) {
          return FittedBox(child: ProductCard(),
          );
        },
      ),
    );
  }
}
