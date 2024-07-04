import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/image_paths.dart';
import '../../utils/widgets/custom_button.dart';

/// A stateless widget that represents the splash screen.
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
        // Background image covering the entire screen.
        Positioned.fill(
          child: Image.asset(
            ImagePaths.splashBackground,
            height: screenHeight,
            width: screenWidth,
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Column(
              children: [
                Center(
                  child: Text(
                    'AspeN',
                    style: GoogleFonts.dancingScript(
                      fontSize: screenWidth * 0.32,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Spacer(flex: 10),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: screenWidth * 0.07,
                    left: screenWidth * 0.05,
                    right: screenWidth * 0.05,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Rich text for 'Plan your' and 'Luxurious Vacation'.
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Plan your\n',
                              style: GoogleFonts.montserrat(
                                fontSize: screenWidth * 0.06,
                              ),
                            ),
                            TextSpan(
                              text: 'Luxurious \nVacation',
                              style: GoogleFonts.montserrat(
                                fontSize: screenWidth * 0.12,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),

                      // Custom button 'Explore'.
                      CustomButton(
                        borderRadius: 15,
                        buttonHeight: screenHeight * 0.06,
                        onPressed: () {},
                        childWidget: Text(
                          'Explore',
                          style: GoogleFonts.baskervville(
                            color: Colors.white,
                            fontSize: screenHeight * 0.02,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
