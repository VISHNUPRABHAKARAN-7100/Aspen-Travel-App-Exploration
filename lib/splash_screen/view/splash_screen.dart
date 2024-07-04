import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/image_paths.dart';
import '../../utils/widgets/custom_button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    // Initialize animation controller
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _animation = Tween<double>(begin: 0.0, end: 1.0).animate(_controller);

    // Start animation
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose(); // Dispose controller
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Stack(
      children: [
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
                FadeTransition(
                  opacity: _animation,
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
        ),
      ],
    );
  }
}
