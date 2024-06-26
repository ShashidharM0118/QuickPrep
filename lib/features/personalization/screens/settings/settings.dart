import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/data/repositories/authentication/authentication_repository.dart';
import 'package:t_store/features/authentication/screens/login/login.dart';
import 'package:t_store/features/personalization/controllers/user_controller.dart';

import '../../../../common/widgets/appbar/appbar.dart';
import '../../../../common/widgets/custom_shapes/containers/primary_header_container.dart';
import '../../../../common/widgets/images/circular_image.dart';
import '../../../../common/widgets/list_tiles/setting_menu_tile.dart';
import '../../../../common/widgets/text/section_heading.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../address/address.dart';
import '../profile/profile.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TPrimaryHeaderContainer(
              child: Column(
                children: [
                  TAppBar(
                    title: Text(
                      'Account',
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .apply(color: TColors.white),
                    ),
                  ),
                  ListTile(
                    leading: const TCircularImage(
                        image: TImages.user, width: 50, height: 50, padding: 0),
                    title: Text(
                      controller.user.value.fullName,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .apply(color: TColors.white),
                    ),
                    subtitle: Text(
                      controller.user.value.email,
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .apply(color: TColors.white),
                    ),
                    trailing: IconButton(
                      onPressed: () => Get.to(()=>const ProfileScreen()),
                      icon: const Icon(Iconsax.edit, color: TColors.white),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections),
                ],
              ),
            ),

             Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  TSectionHeading(title: "Account Settings", showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),

                  TSettingsMenuTile(
                      icon: Iconsax.notification, title: "Notifications", subTitle: "Set any kind of notification messages"),
                  TSettingsMenuTile(
                      icon: Iconsax.security_card, title: "Account Privacy", subTitle: "Manage data usage and connected accounts"),
                  SizedBox(height: TSizes.spaceBtwSections),
                  TSectionHeading(title: "App Settings!", showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  TSettingsMenuTile(
                      icon: Iconsax.document_upload, title: "Load Data", subTitle: "Upload Data to your Cloud Firebase"),


                    ///logout
                    const SizedBox(height: TSizes.spaceBtwSections),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton (onPressed: ()=>AuthenticationRepository.instance.logout(), child: const Text('Logout')),
                    ),
                    const SizedBox (height: TSizes.spaceBtwSections * 2.5),
                    ],
              ),
            )

          ],
        ),
      ),
    );
  }
}

