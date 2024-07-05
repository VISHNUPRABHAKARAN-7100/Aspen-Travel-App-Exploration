import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FadeInTitle extends StatelessWidget {
  final Animation<double> animation;

  const FadeInTitle({required this.animation, super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    return Positioned(
      top: MediaQuery.of(context).size.height * 0.1,
      child: FadeTransition(
        opacity: animation,
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
      ),
    );
  }
}
