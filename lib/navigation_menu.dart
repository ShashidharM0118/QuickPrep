import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:t_store/features/work/screens/resume/resume.dart';

import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

import 'features/personalization/screens/settings/settings.dart';
//import 'features/work/Practise/practise.dart';
import 'features/work/Practise/homeScreen.dart';
import 'features/work/screens/home/home.dart';


class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx(
        () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) =>
              controller.selectedIndex.value = index,
          backgroundColor: darkMode? TColors.black: Colors.white,
          indicatorColor: darkMode? TColors.white.withOpacity(0.1): TColors.black.withOpacity(0.1),
          destinations: const [
            NavigationDestination(
                icon: Icon(Iconsax.home), label: 'Home'),
            NavigationDestination(
                icon: Icon(Iconsax.trend_up), label: 'Activity'),
            NavigationDestination(
                icon: Icon(Iconsax.status), label: 'Practise'),
            NavigationDestination(
                icon: Icon(Iconsax.user), label: 'User'),
          ],
        ),
      ),
      body: Obx(()=> controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx<int> selectedIndex = 0.obs; //it retains selected index;

  final screens = [
    const HomeScreen(),
    const ResumeScreen(),
    HomeQuizScreen(),
    const SettingsScreen()
  ];
}
