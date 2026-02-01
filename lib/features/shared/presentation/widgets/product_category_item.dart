import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/features/products/product_list_screen.dart';
import 'package:flutter/material.dart';

class ProductCategoryItem extends StatelessWidget {
  final String title;
  final String iconUrl;

  const ProductCategoryItem({
    super.key,
    required this.title,
    required this.iconUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          ProductListScreen.name,
          arguments: title,
        );
      },
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.network(
              iconUrl,
              width: 32,
              height: 32,
              errorBuilder: (_, __, ___) =>
              const Icon(Icons.category, size: 32),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: Theme.of(context)
                .textTheme
                .bodyMedium
                ?.copyWith(color: AppColors.themeColor),
          ),
        ],
      ),
    );
  }
}
