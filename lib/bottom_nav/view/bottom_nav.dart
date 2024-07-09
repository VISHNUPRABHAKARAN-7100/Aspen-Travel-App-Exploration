import 'package:aspen_travel_app_exploration/home_screen/view/home_screen.dart';
import 'package:aspen_travel_app_exploration/utils/image_paths.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../provider/bottom_nav_provider.dart';
import 'widgets/bottom_nav_icon.dart';

class BottomNav extends StatelessWidget {
  BottomNav({super.key});

  final pages = [
    const HomeScreen(),
    const Page2(),
    const Page2(),
    const Page2(),
  ];

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Consumer<BottomNavProvider>(
      builder: (context, snapShot, child) => Scaffold(
        body: pages[snapShot.currentIndex],
        bottomNavigationBar: Container(
          height: screenHeight * 0.07,
          width: screenWidth,
          decoration: const BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(30),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // Bottom navigation bar icon for QR Code scanning screen.
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 0,
                selectedIcon: ImagePaths.homeIconFilled,
                unSelectedIcon: ImagePaths.homeIcon,
              ),

              // Bottom navigation bar icon for Profile screen.
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 1,
                selectedIcon: ImagePaths.ticketIconFilled,
                unSelectedIcon: ImagePaths.ticketIconTicket,
              ),
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 2,
                selectedIcon: ImagePaths.favoriteIconFilled,
                unSelectedIcon: ImagePaths.favoriteIcon,
              ),
              BottomNavIcon(
                pageIndexProvider: snapShot,
                pageIndex: 3,
                selectedIcon: ImagePaths.personIconFilled,
                unSelectedIcon: ImagePaths.personIcon,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Page2'),
      ),
    );
  }
}
