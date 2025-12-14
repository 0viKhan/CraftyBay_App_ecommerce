import 'package:e_commerce_shop/app/asset_paths.dart';
import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/constants.dart';
import 'package:e_commerce_shop/features/carts/presentation/widgets/total_price_and_checkout.dart';
import 'package:e_commerce_shop/features/shared/presentation/widgets/increment_decrement_button.dart';
import 'package:flutter/cupertino.dart' show Placeholder, State, StatefulWidget, BuildContext, Widget;
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add To Cart'),
      ),
      body: Column(
       children: [
         Expanded(child:ListView.separated(
             itemCount: 5,
             itemBuilder: (context,index){
               return Card(
                 color: Colors.white,
                 elevation: 4,
                 shadowColor: AppColors.themeColor.withOpacity(0.1),
                 margin:EdgeInsets.symmetric(horizontal: 16),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                   Container(
                     margin:EdgeInsets.all(4),
                     decoration: BoxDecoration(

                       borderRadius: BorderRadius.circular(8),
                       color: Colors.grey.shade200,
                     ),

                     child: Image.asset(AssetPaths.dummyImage,height: 80,width: 80,),
                   ),
                     Expanded(
                       child: Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Column(
                           children: [
                                 Row(

                                   children: [
                                     Expanded(child: Column(
                                       crossAxisAlignment:CrossAxisAlignment.start,
                                       children: [
                                         Text("Nike Shoes hjhdjkhdkj ",style: TextTheme.of(context).titleMedium,),
                                         Text("Size:XL Color:Red djhhslkjh",style: TextTheme.of(context).bodySmall),
                                       ],

                                     )),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.delete))
                                   ],
                                 ),
                                 Row(
                                   mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                   children: [
                                     Text('${dollarSign}12',style:TextTheme.of(context).titleSmall?.copyWith(
                                         color: AppColors.themeColor
                                     ),

                                     ),
                                     IncrementDecrementButton(onChange:(int value){}),
                                   ],
                                 ),
                           ],
                         ),
                       ),
                     )
                   ],
                 ),
               );
             },
           separatorBuilder: (context, index) {
             return SizedBox(height: 8);
           },



         )),
         TotalPriceAndCartCheckout()
       ],
      ),
    );
  }
}
