import 'package:carousel_slider/carousel_options.dart' show CarouselOptions;
import 'package:carousel_slider/carousel_slider.dart';
import 'package:e_commerce_shop/app/extensions/app_colors.dart' show AppColors;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeBannerSlider extends StatefulWidget {
  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
   final ValueNotifier<int> _currentIndex=ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        CarouselSlider(
          options: CarouselOptions(height: 200,
            viewportFraction: 1,
          autoPlay:false,
          onPageChanged: (int index,CarouselPageChangedReason reason){

            _currentIndex.value=index;


          }
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                      color: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Text('text $i', style: TextStyle(fontSize: 16.0)),
                );
              },
            );
          }).toList(),
        ),


          ValueListenableBuilder(
            valueListenable: _currentIndex,
            builder: (context, value, child) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i =0;i<5;i++)
                  Container(
              
                    width: 12,
                    height: 12,
                    margin: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: _currentIndex.value ==i?AppColors.themeColor:null,
                      border: Border.all(color: Colors.red),

                    ),

                  ),

                ],
              );
            }
          )
      ],
    );
  }
}
