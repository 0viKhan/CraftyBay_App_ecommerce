import 'dart:ui' show Radius;

import 'package:e_commerce_shop/app/extensions/app_colors.dart';
import 'package:e_commerce_shop/app/extensions/constants.dart';
import 'package:flutter/cupertino.dart' show EdgeInsets, StatelessWidget, BuildContext, Widget, BorderRadius, BoxDecoration, MainAxisAlignment, CrossAxisAlignment, FontWeight, TextStyle, Text, Column, SizedBox, Row, Container;
import 'package:flutter/material.dart';

class TotalPriceAndCartCheckout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final textTheme =Theme.of(context).textTheme;
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: AppColors.themeColor.withOpacity(0.3),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16),
            topRight: Radius.circular(16),
          )
      ),
      child: Row(
        mainAxisAlignment:MainAxisAlignment.spaceBetween ,
        children: [
          Column(
            crossAxisAlignment:CrossAxisAlignment.start ,
            children: [
              Text('Total Price',style:
              TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500
              ),),
              Text('${dollarSign}12',style:textTheme.titleMedium?.copyWith(
                  color: AppColors.themeColor
              )),
            ],
          ),
          SizedBox(
            width: 120,
            child: FilledButton(
              onPressed: () {},
              child: Text("Checkout"),
            ),
          ),
        ],
      ),
    );
  }
}
