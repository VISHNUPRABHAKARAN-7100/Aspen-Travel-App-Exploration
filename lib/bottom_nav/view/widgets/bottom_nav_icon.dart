import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../provider/bottom_nav_provider.dart';

class BottomNavIcon extends StatelessWidget {
  const BottomNavIcon({
    super.key,
    required this.pageIndexProvider,
    required this.pageIndex,
    required this.unSelectedIcon,
    required this.selectedIcon,
  });
  final BottomNavProvider pageIndexProvider;
  final int pageIndex;
  final String unSelectedIcon;
  final String selectedIcon;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return IconButton(
      onPressed: () async {
        await HapticFeedback.vibrate();
        pageIndexProvider.changeIndex(pageIndex);
      },
      icon: pageIndexProvider.currentIndex == pageIndex
          ? Image.asset(
              selectedIcon,
              height: screenWidth * 0.08,
              width: screenWidth * 0.08,
            )
          : Image.asset(
              unSelectedIcon,
              height: screenWidth * 0.08,
              width: screenWidth * 0.08,
            ),
    );
  }
}
