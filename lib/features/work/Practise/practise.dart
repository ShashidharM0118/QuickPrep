

import 'package:flutter/material.dart';

import '../../../common/widgets/layout/grid_layout.dart';
import '../../../common/widgets/products/product_cards/product_card_vertical.dart';
import '../../../utils/constants/sizes.dart';

class PractiseScreen extends StatelessWidget {
  const PractiseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          const SizedBox(
            height: TSizes.spaceBtwSections*2,
          ),
          TGridLayout(
            itemCount: 4,
            itemBuilder: (_, index) => const ProductCardVertical(),
          ),
        ],
    ));
  }
}
