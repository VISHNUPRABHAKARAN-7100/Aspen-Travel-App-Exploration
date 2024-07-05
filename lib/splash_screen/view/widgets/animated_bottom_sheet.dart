import 'package:aspen_travel_app_exploration/home_screen/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/widgets/custom_button.dart';

class AnimatedBottomSheet extends StatelessWidget {
  final bool isVisible;

  const AnimatedBottomSheet({
    required this.isVisible,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 700),
      top: isVisible ? screenHeight - (screenHeight * 0.33) : screenHeight,
      left: 0,
      right: 0,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: screenWidth * 0.05,
          vertical: screenWidth * 0.07,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
            CustomButton(
              borderRadius: 15,
              buttonWidth: screenWidth * 0.9,
              buttonHeight: screenHeight * 0.06,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        const HomeScreen(),
                    transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                      var begin = const Offset(1.0, 0.0);
                      var end = Offset.zero;
                      var curve = Curves.ease;

                      var tween = Tween(begin: begin, end: end)
                          .chain(CurveTween(curve: curve));

                      return SlideTransition(
                        position: animation.drive(tween),
                        child: child,
                      );
                    },
                  ),
                );
              },
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
    );
  }
}
