import 'package:e_commerce_shop/app/asset_paths.dart';
import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/constants.dart';
import 'package:e_commerce_shop/features/home/presentaion/screens/home_screen.dart';
import 'package:e_commerce_shop/features/home/widgets/home_banner_slider.dart';
import 'package:e_commerce_shop/features/shared/presentation/controller/main_nav_controller.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/app_bar_icon_button.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/product_card.dart' show ProductCard;
import 'package:e_commerce_shop/features/shared/presentation/widgets/product_category_item.dart';
import 'package:flutter/cupertino.dart'
    show Placeholder, StatefulWidget, State, BuildContext, Widget;
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
          'assets/images/AppBarCraftBayLogo.png',

          width: 150,
          height: 150,
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
              _build_search_bar(),
              const SizedBox(height: 16),
              HomeBannerSlider(),
              buildSelectionHeader(title: 'Categories', onTapSeeAll: () {
                Get.find<MainNavController>().moveToCategory();
          
              }),
              const SizedBox(height: 16),
          
              buildCategoryList(),
              buildSelectionHeader(title: 'New', onTapSeeAll: () {}),
              const SizedBox(height: 16),



              _buildNewProductList(),

          
              buildSelectionHeader(title: 'Popular', onTapSeeAll: () {}),
              const SizedBox(height: 16),
              _buildPopularProductList(),
              buildSelectionHeader(title: 'Special', onTapSeeAll: () {}),
              _buildSepeicalProductList()

            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildCategoryList() {
    return SizedBox(
      height: 100,
      child: ListView.separated(

        itemCount: 5,
        primary: false,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index) {
          return ProductCategoryItem();
        },
        separatorBuilder: (context,index) {
          return SizedBox(
              width: 8);
        },
      ),
    );
  }
Widget _buildNewProductList()
{
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(

      children: [1,2,3,4,5,6].map((e)=>ProductCard()).toList(),
    ),
  );
      
}
Widget _buildPopularProductList()
{
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [1,2,3,4,5,6].map((e)=>ProductCard()).toList(),
    ),
  );

}
Widget _buildSepeicalProductList()
{
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: [1,2,3,4,5,6].map((e)=>ProductCard()).toList(),
    ),
  );

}



  Widget buildSelectionHeader({
    required String title,
    required VoidCallback onTapSeeAll,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium),
        TextButton(onPressed: onTapSeeAll, child: Text("See all")),
      ],
    );
  }

  Widget _build_search_bar() {
    return TextField(
      onSubmitted: (String? text) {},
      textInputAction: TextInputAction.search,
      decoration: InputDecoration(
        hintText: 'Search',

        fillColor: Colors.grey.shade300,
        filled: true,
        enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
        prefixIcon: Icon(Icons.search),
      ),
    );
  }
}

