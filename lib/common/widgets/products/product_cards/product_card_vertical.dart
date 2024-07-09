import 'package:flutter/material.dart';

import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/constants/sizes.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';


import '../../../styles/shadows.dart';
import '../../custom_shapes/containers/rounded_container.dart';

import '../../images/rounded_image.dart';
import '../../text/product_title_text.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: (){},
      child: Container(
        width: 250,
        height: 100,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(

          boxShadow: [TShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [

            ///thumbnail
            TRoundedContainer(
              height: 190,
              padding: const EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                 // Thumbnail Image
                  const TRoundedImage(
                    imageUrl: 'assets/images/banners/bulb-1.png',
                    applyImageRadius: true,
                  ),

                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems/2,),
            /// details
             Padding(
              padding: const EdgeInsets.only(left: TSizes.sm),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Practise Quiz')
                  // const SizedBox(height: TSizes.spaceBtwItems/2,),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   // children: [
                  //   //   Text(
                  //   //
                  //   //     "QuickPrep",
                  //   //     overflow: TextOverflow.ellipsis,
                  //   //     maxLines: 1,
                  //   //     style: Theme.of(context).textTheme.labelMedium,
                  //   //   ),
                  //   //   // const SizedBox(width: TSizes.xs),
                  //   //   const Icon(Iconsax.verify5, color: TColors.primary, size: TSizes.iconXs),
                  //   //   // Row
                  //   // ],
                  // ),
                ], // Column
              ),
             ),




          ],
        ),
      ),
    );
  }
}


