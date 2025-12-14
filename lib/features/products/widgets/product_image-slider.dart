import 'package:carousel_slider/carousel_options.dart' show CarouselOptions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_shop/app/extensions/app_colors.dart' show AppColors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductImageSlider extends StatefulWidget {
  @override
  State<ProductImageSlider> createState() => _ProductImageSliderState();
}

class _ProductImageSliderState extends State<ProductImageSlider> {
  final ValueNotifier<int> _currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 220,
            viewportFraction: 1,
            autoPlay: false,
            onPageChanged: (int index, CarouselPageChangedReason reason) {
              _currentIndex.value = index;
            },
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.grey.shade300,
                );
              },
            );
          }).toList(),
        ),

        Positioned(
       bottom: 0,
            left: 0,
            right: 0,
            child: ValueListenableBuilder(
              valueListenable: _currentIndex,
              builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int i = 0; i < 5; i++)
                      Container(
                        width: 12,
                        height: 12,
                        margin: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: _currentIndex.value == i
                              ? AppColors.themeColor
                              : null,
                          border: Border.all(color: Colors.red),
                        ),
                      ),
                  ],
                );
              },
            ),
          ),

      ],
    );
  }
}
