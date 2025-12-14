import 'package:e_commerce_shop/features/shared/presentation/controller/main_nav_controller.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/product_category_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult:(_,__){
        _backToHome();
      }
      ,
      child: Scaffold(
        appBar: AppBar(
          title: Text('categories'),
          leading: BackButton(onPressed: _backToHome),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      
              crossAxisCount: 4,
              crossAxisSpacing: 8,
              mainAxisSpacing: 8
            ),
            itemCount: 10,
            itemBuilder: (context, index) {
              return FittedBox(child: ProductCategoryItem());
            },
          ),
        ),
      ),
    );
  }
  void _backToHome()
  {
    Get.find<MainNavController>().backToHome();
  }

}
