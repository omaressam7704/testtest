import 'package:flutter/material.dart';
import 'package:islami/core/consts/app_assets.dart';
import 'package:islami/core/theme/app_colors.dart';

class BottomNavBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  const BottomNavBar(
      {super.key, required this.currentIndex, required this.onTap});

  BottomNavigationBarItem _buildNavItem(String assetPath, int index) {
    bool isSelected = currentIndex == index;
    return BottomNavigationBarItem(
      icon: Image.asset(
        assetPath,
        height: 30,
        color: isSelected
            ? AppColors.selectedIconColor
            : AppColors.unselectedIconColor,
      ),
      label: _getLabel(index),
    );
  }

  String _getLabel(int index) {
    switch (index) {
      case 0:
        return "Quran";
      case 1:
        return "Hadith";
      case 2:
        return "Sebha";
      case 3:
        return "Radio";
      case 4:
        return "Time";
      default:
        return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.pri,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: AppColors.selectedIconColor,
      unselectedItemColor: const Color.fromARGB(0, 0, 0, 0),
      currentIndex: currentIndex,
      onTap: onTap,
      items: [
        _buildNavItem(AppAssets.navIcn1, 0),
        _buildNavItem(AppAssets.navIcn2, 1),
        _buildNavItem(AppAssets.navIcn3, 2),
        _buildNavItem(AppAssets.navIcn4, 3),
        _buildNavItem(AppAssets.navIcn5, 4),
      ],
    );
  }
}
