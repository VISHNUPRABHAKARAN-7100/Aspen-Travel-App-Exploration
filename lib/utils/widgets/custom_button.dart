import 'package:aspen_travel_app_exploration/utils/color_constants.dart';
import 'package:flutter/material.dart';

/// This screen is for creating a custom button.
class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.buttonWidth = double.infinity,
    this.buttonColor = ColorConstants.mainBlue,
    this.buttonHeight = 40,
    required this.onPressed,
    required this.childWidget,
    this.borderRadius = 10,
  });

  /// Variables for the custom button.
  final double buttonWidth;
  final double buttonHeight;
  final Color buttonColor;
  final void Function() onPressed;
  final Widget childWidget;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        return onPressed();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: buttonColor,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        minimumSize: Size(buttonWidth, buttonHeight),
      ),
      child: childWidget,
    );
  }
}
