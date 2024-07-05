import 'package:flutter/material.dart';
import 'widgets/animated_bottom_sheet.dart';
import 'widgets/fade_in_title.dart';
import 'widgets/splash_screen_back_ground_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late final AnimationController _animationController;
  late final Animation<double> _fadeInAnimation;
  bool _isBottomSheetVisible = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _fadeInAnimation =
        Tween<double>(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleBottomSheet() {
    setState(() {
      _isBottomSheetVisible = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: GestureDetector(
        onTap: _toggleBottomSheet,
        child: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            children: [
              const SplashScreenBackgroundImage(),
              FadeInTitle(animation: _fadeInAnimation),
              AnimatedBottomSheet(
                isVisible: _isBottomSheetVisible,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
