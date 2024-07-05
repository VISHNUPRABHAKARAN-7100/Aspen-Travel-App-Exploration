import 'package:flutter/material.dart';

import '../../../utils/image_paths.dart';

class SplashScreenBackgroundImage extends StatelessWidget {
  const SplashScreenBackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Positioned.fill(
      child: Image.asset(
        ImagePaths.splashBackground,
        height: screenHeight,
        width: screenWidth,
        fit: BoxFit.cover,
      ),
    );
  }
}
