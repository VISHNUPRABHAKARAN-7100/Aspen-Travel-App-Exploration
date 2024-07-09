import 'package:flutter/material.dart';
import 'widgets/animated_bottom_sheet.dart';
import 'widgets/fade_in_title.dart';
import 'widgets/splash_screen_back_ground_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isBottomSheetVisible = false;
  bool _isTitleVisible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      const Duration(seconds: 1),
      () {
        setState(() {
          _isTitleVisible = true;
          _isBottomSheetVisible = true;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SizedBox(
        height: screenHeight,
        width: screenWidth,
        child: Stack(
          children: [
            const SplashScreenBackgroundImage(),
            FadeInTitle(
              isVisible: _isTitleVisible,
            ),
            AnimatedBottomSheet(
              isVisible: _isBottomSheetVisible,
            ),
          ],
        ),
      ),
    );
  }
}
