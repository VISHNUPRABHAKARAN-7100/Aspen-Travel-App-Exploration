import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadeInTitle extends StatelessWidget {
  // final Animation<double> animation;

  const FadeInTitle({
    super.key,
    required this.isVisible,
  });
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return AnimatedPositioned(
      duration: const Duration(milliseconds: 700),
      left: isVisible ? 10 : screenWidth,
      top: screenHeight * 0.1,
      child: SizedBox(
        width: screenWidth,
        child: Center(
          child: Text(
            'AspeN',
            style: GoogleFonts.dancingScript(
              fontSize: screenWidth * 0.32,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
