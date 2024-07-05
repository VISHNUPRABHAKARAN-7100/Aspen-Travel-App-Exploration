import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/color_constants.dart';

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    // Retrieves the size of the device screen.
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Explore\n',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: screenWidth * 0.05,
                ),
              ),
              TextSpan(
                text: 'Aspen',
                style: GoogleFonts.montserrat(
                  color: Colors.black,
                  fontSize: screenWidth * 0.1,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        const Icon(
          Icons.location_on_rounded,
          color: ColorConstants.mainBlue,
        ),
        const SizedBox(width: 5),
        Text(
          'Kerala, India',
          style: GoogleFonts.inter(),
        ),
        const SizedBox(width: 5),
        const Icon(
          Icons.keyboard_arrow_down,
          color: ColorConstants.mainBlue,
        )
      ],
    );
  }
}
