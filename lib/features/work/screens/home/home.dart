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
import '../mostfrequent/faq_page.dart';
import 'widgets/home_appbar.dart';
 // Make sure to import the FAQPage class

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
                          return Text('Hello ${controller.user.value.firstName ?? ''} , 👋', style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis);
                        }),

                        const SizedBox(
                          height: TSizes.spaceBtwItems,
                        ),
                        /// Scrollable categories
                        Text('Welcome to QuickPrep', style: Theme.of(context).textTheme.headlineMedium!.apply(color: Colors.white), maxLines: 1, overflow: TextOverflow.ellipsis),

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
                    title: 'Explore',
                    onPressed: () {},
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  /// Custom Cards
                  GestureDetector(
                    onTap: () {
                      // Navigate to FAQPage
                      Get.to(() => FAQPage());
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(TSizes.defaultSpace),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Most Frequent Questions', style: Theme.of(context).textTheme.headlineMedium),
                            const SizedBox(height: TSizes.spaceBtwItems),
                            Text('Find answers to the most frequently asked questions.'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                  Card(
                    child: Padding(
                      padding: const EdgeInsets.all(TSizes.defaultSpace),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Interesting Facts', style: Theme.of(context).textTheme.headlineMedium),
                          const SizedBox(height: TSizes.spaceBtwItems),
                          Text('Discover some interesting facts that you might not know.'),
                        ],
                      ),
                    ),
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

