import 'package:e_commerce_shop/features/home/presentaion/screens/home_category_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:e_commerce_shop/features/home/widgets/home_banner_slider.dart';

import 'package:e_commerce_shop/features/shared/presentation/controller/main_nav_controller.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/app_bar_icon_button.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/product_card.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/product_category_item.dart';

import '../../widgets/Banner_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  void initState() {
    super.initState();
    Get.put(HomeBannerController());
    Get.put(HomeCategoryController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/AppBarCraftBayLogo.png',
          width: 150,
        ),
        actions: [
          AppBarIconButton(onTap: () {}, iconData: Icons.person),
          AppBarIconButton(onTap: () {}, iconData: Icons.call),
          AppBarIconButton(onTap: () {}, iconData: Icons.notification_add),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 16),
              _buildSearchBar(),
              const SizedBox(height: 16),

              const HomeBannerSlider(),

              _buildSectionHeader(
                title: 'Categories',
                onTapSeeAll: () {
                  Get.find<MainNavController>().moveToCategory();
                },
              ),
              const SizedBox(height: 16),

              _buildCategoryList(),

              _buildSectionHeader(title: 'New', onTapSeeAll: () {}),
              const SizedBox(height: 16),
              _buildProductList(),

              _buildSectionHeader(title: 'Popular', onTapSeeAll: () {}),
              const SizedBox(height: 16),
              _buildProductList(),

              _buildSectionHeader(title: 'Special', onTapSeeAll: () {}),
              _buildProductList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryList() {
    return SizedBox(
      height: 100,
      child: GetBuilder<HomeCategoryController>(
        builder: (controller) {
          if (controller.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (controller.categories.isEmpty) {
            return const SizedBox.shrink();
          }

          return ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: controller.categories.length,
            separatorBuilder: (_, __) => const SizedBox(width: 8),
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

  Widget _buildProductList() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(6, (_) => const ProductCard()),
      ),
    );
  }

  Widget _buildSectionHeader({
    required String title,
    required VoidCallback onTapSeeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        TextButton(onPressed: onTapSeeAll, child: const Text('See all')),
      ],
    );
  }

  Widget _buildSearchBar() {
    return TextField(
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search',
        filled: true,
        fillColor: Colors.grey.shade300,
        border: OutlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: const Icon(Icons.search),
      ),
    );
  }
}
