import 'package:flutter/material.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/text_strings.dart';

///login Header
class TLoginHeader extends StatelessWidget {
  const TLoginHeader({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),

        Text(
          TTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: TSizes.spaceBtwSections,
        ),
      Text('QuickPrep', style: Theme.of(context).textTheme.headlineLarge!.apply(color: Colors.white),maxLines:1,overflow: TextOverflow.ellipsis,),
        const SizedBox(
          height: TSizes.sm,
        ),

        const SizedBox(
          height: TSizes.sm,
        ),
        Text(
          TTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}


