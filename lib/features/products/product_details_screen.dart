import 'package:e_commerce_shop/app/extensions/constants.dart';
import 'package:e_commerce_shop/features/products/widgets/product_image-slider.dart';
import 'package:e_commerce_shop/features/products/widgets/total_price_and_cart_section.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/color_picker.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/increment_decrement_button.dart'
    show IncrementDecrementButton;
import 'package:e_commerce_shop/features/shared/presentation/widgets/size_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});
  static const String name = '/product-details';

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details', style: TextStyle(color: Colors.black)),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProductImageSlider(),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Column(
                          spacing: 8,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'BataA23',
                              style: TextStyle(color: Colors.green),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 24,
                                      color: Colors.amber,
                                    ),
                                    SizedBox(width: 4),
                                    Text('4.3', style: TextStyle(fontSize: 18)),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text('Review'),
                                    ),
                                    Card(
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4),
                                        child: Icon(
                                          Icons.favorite_outlined,
                                          size: 16,
                                          color: Colors.red,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
              
                                IncrementDecrementButton(
                                  onChange: (int value) {},
                                ),
                              ],
                            ),
                            Text('color', style: TextStyle(fontSize: 18)),
                            ColorPicker(
                              colors: ['red', 'white', 'Black'],
                              onSelected: (String color) {},
                            ),
                            Text('size', style: TextStyle(fontSize: 18)),
                            SizePicker(
                              sizes: ['S', 'M', 'XL', 'XXL'],
                              onSelected: (String size) {},
                            ),
                            const SizedBox(height: 10,),
                            Text('Description', style: TextStyle(fontSize: 18)),
                                Text("Introducing the North Star Mens Casual Lace-Up Sneaker, a versatile and affordable footwear option reminiscent of classic Converse style. Crafted from Introducing the North Star Mens Casual Lace-Up Sneaker, a versatile and affordable footwear option reminiscent of classic Converse style. Crafted from durable canIntroducing the North Star Mens Casual Lace-Up Sneaker, a versatile and affordable footwear option reminiscent of classic Converse style. Crafted from durable candurable canvas with a sleek white colorway,...",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                                ),),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          TotalPriceAndCart(),
        ],
      ),
    );
  }
}
