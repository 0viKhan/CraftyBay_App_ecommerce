import 'package:e_commerce_shop/app/asset_paths.dart';
import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/constants.dart';
import 'package:e_commerce_shop/features/products/product_details_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:(){
        Navigator.pushNamed(context, ProductDetailsScreen.name);
      } ,
      child: Card(
        color: Colors.white,
        elevation: 2,
        shadowColor: Colors.grey,
        child: SizedBox(
          width: 130,
          child: Column(
            children: [
              Container(
      
                padding:EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color:AppColors.themeColor.withOpacity(0.1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      topRight: Radius.circular(8),
                    )
                ),
                child: Image.asset(
                  AssetPaths.dummyImage,
                  height: 100,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Bata 2022A',maxLines: 1,style: TextStyle(
                        overflow: TextOverflow.ellipsis
                    ),
      
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('${dollarSign}12',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.green
                        ),),
                        Wrap(
                          children: [
                            Icon(Icons.star,size: 18,color: Colors.amber,),
                            Text('4.3')
                          ],
                        ),
                        Card(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4)
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Icon(Icons.favorite_outlined,
                              size:16 ,
                              color: Colors.red,
                            ),
                          ),
                        )
                      ],
                    )
      
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
