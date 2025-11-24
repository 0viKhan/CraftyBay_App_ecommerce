import 'package:e_commerce_shop/features/shared/presentation/widgets/app_bar_icon_button.dart';
import 'package:flutter/cupertino.dart'
    show Placeholder, StatefulWidget, State, BuildContext, Widget;
import 'package:flutter/material.dart';

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
          AppBarIconButton(onTap: () {  }, iconData:Icons.person,),
          AppBarIconButton(onTap: () {  }, iconData:Icons.call,),
          AppBarIconButton(onTap: () {  }, iconData:Icons.notification_add,)


        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 16),
            _build_search_bar()
          ],
        ),
      ),
    );
  }

  Widget _build_search_bar() {
    return TextField(
            onSubmitted: (String? text){

            },
            textInputAction:TextInputAction.search,
            decoration: InputDecoration(
              hintText: 'Search',

              fillColor: Colors.grey.shade300,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none,

              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              prefixIcon: Icon(Icons.search),
            ),
          );
  }
}
