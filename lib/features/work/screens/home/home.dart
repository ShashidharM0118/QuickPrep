import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:t_store/features/work/screens/home/widgets/home_catagories.dart';
import 'package:t_store/features/work/screens/home/widgets/promo_slider.dart';
import '../../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/custom_shapes/containers/search_container.dart';
import '../../../../common/widgets/layout/grid_layout.dart';
import '../../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../personalization/controllers/user_controller.dart';
import 'widgets/home_appbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  /// APPBAR
                  const THomeAppBar(),
                  const SizedBox(
                    height: TSizes.spaceBtwSections,
                  ),
                  /// Categories
                  Padding(
                    padding: const EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      children: [
                        Obx(() {
                          return Text('Hello ${controller.user.value.firstName ?? ''} , 👋', style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white),maxLines:1,overflow: TextOverflow.ellipsis,);
                        }),

                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        /// Scrollable categories

             Text('Welcome to QuickPrep   ', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white),maxLines:1,overflow: TextOverflow.ellipsis,),

                        const SizedBox(height: TSizes.spaceBtwSections * 2),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            /// Body
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(banners: [TImages.promoBanner1, TImages.promoBanner2, TImages.promoBanner3, TImages.promoBanner4]),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  /// Heading
                  TSectionHeading(
                    title: 'Explore ',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  /// Grid
                  TGridLayout(
                    itemCount: 4,
                    itemBuilder: (_, index) => const ProductCardVertical(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
