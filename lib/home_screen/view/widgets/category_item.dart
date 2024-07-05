import 'package:aspen_travel_app_exploration/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../utils/color_constants.dart';
import '../../../utils/custom_enums.dart';

class CategoryItem extends StatelessWidget {
  final Categories category;
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryItem({
    required this.category,
    required this.isSelected,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(4.0),
        height: 50,
        width: screenWidth * 0.25,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: isSelected ? const Color(0xFFC2D7F3) : Colors.white,
        ),
        alignment: Alignment.center,
        child: Text(
          category.name.capitalize(),
          style: GoogleFonts.roboto(
            color:
                isSelected ? ColorConstants.mainBlue : const Color(0xffB8B8B8),
            fontWeight: isSelected ? FontWeight.w600 : FontWeight.normal,
            fontSize: isSelected ? 16 : 14,
          ),
        ),
      ),
    );
  }
}
