import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../home/presentaion/screens/home_category_controller.dart';
import '../../../shared/presentation/controller/main_nav_controller.dart';
import '../../../shared/presentation/widgets/product_category_item.dart';

class CategoryListScreen extends StatefulWidget {
  const CategoryListScreen({super.key});

  @override
  State<CategoryListScreen> createState() => _CategoryListScreenState();
}

class _CategoryListScreenState extends State<CategoryListScreen> {

  @override
  void initState() {
    super.initState();
    Get.put(HomeCategoryController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
        leading: BackButton(
          onPressed: () => Get.find<MainNavController>().backToHome(),
        ),
      ),
      body: GetBuilder<HomeCategoryController>(
        builder: (controller) {
          if (controller.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.categories.isEmpty) {
            return const Center(child: Text('No categories found'));
          }

          return GridView.builder(
            padding: const EdgeInsets.all(12),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
            ),
            itemCount: controller.categories.length,
            itemBuilder: (context, index) {
              final category = controller.categories[index];
              return ProductCategoryItem(
                title: category.title,
                iconUrl: category.icon,
              );
            },
          );
        },
      ),
    );
  }
}
