import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';

import '../../../app/extensions/app_colors.dart';
import 'Banner_controller.dart';

class HomeBannerSlider extends StatefulWidget {
  const HomeBannerSlider({super.key});

  @override
  State<HomeBannerSlider> createState() => _HomeBannerSliderState();
}

class _HomeBannerSliderState extends State<HomeBannerSlider> {
  final ValueNotifier<int> _index = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeBannerController>(
      builder: (controller) {
        if (controller.loading) {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (controller.banners.isEmpty) {
          return const SizedBox.shrink();
        }

        return Column(
          children: [
            CarouselSlider(
              options: CarouselOptions(
                height: 200,
                viewportFraction: 1,
                autoPlay: true,
                onPageChanged: (i, _) => _index.value = i,
              ),
              items: controller.banners.map((banner) {
                return Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 6),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: NetworkImage(banner.image),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 8),

            ValueListenableBuilder(
              valueListenable: _index,
              builder: (_, value, __) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    controller.banners.length,
                        (i) => Container(
                      width: 8,
                      height: 8,
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: value == i
                            ? AppColors.themeColor
                            : Colors.grey.shade400,
                      ),
                    ),
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}
