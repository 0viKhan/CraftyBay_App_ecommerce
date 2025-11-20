import 'package:e_commerce_shop/features/home/presentaion/screens/home_screen.dart';
import 'package:e_commerce_shop/features/shared/presentation/controller/main_nav_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

class BottomNavHolder extends StatefulWidget {

  static const String name='/bottom-nav-holder';
  const BottomNavHolder({super.key});

  @override
  State<BottomNavHolder> createState() => _BottomNavHolderState();
}

class _BottomNavHolderState extends State<BottomNavHolder> {
  final List<Widget>_screens=[
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
    HomeScreen(),
  ] ;
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavController>(
      builder: (mainNavController) {
        return Scaffold(
          body: _screens[
          mainNavController.currentIndex],

          bottomNavigationBar: NavigationBar(
            selectedIndex: mainNavController.currentIndex,
              onDestinationSelected: mainNavController.changeIndex,

              destinations: [


                NavigationDestination(icon: Icon(Icons.home), label: "Home"),
                NavigationDestination(icon: Icon(Icons.dashboard), label: "Categories"),
                NavigationDestination(icon: Icon(Icons.shopping_bag), label: "Cart"),
                NavigationDestination(icon: Icon(Icons.home), label: "Wishlist"),




              ]),
        );
      }
    );
  }
}
