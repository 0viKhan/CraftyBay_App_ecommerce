import 'package:e_commerce_shop/app/extensions/app_colors.dart' show AppColors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCategoryItem extends StatelessWidget {
  const ProductCategoryItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      children: [
        Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: AppColors.themeColor.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8)
          ),
          child: Icon(Icons.computer,size: 32,),
        ),
        Text('Elecctronic',style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.themeColor
        ))
      ],
    );
  }
}
