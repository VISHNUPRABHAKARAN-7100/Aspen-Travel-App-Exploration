import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Custom widget for create a custom textForm field for refactoring the code.
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    required this.validator,
    required this.textEditingController,
    this.keyboardType,
    this.inputFormatters,
    this.suffixIcon,
    this.textCapitalization = TextCapitalization.none,
    this.onTap,
    this.onChanged,
    this.maxLines = 1,
    this.textInputAction = TextInputAction.next,
    this.readOnly = false,
    this.hintTextColor = const Color(0xFFC2C2C2),
    this.cursorColor = Colors.black,
    this.onFieldSubmitted,
    this.prefixIcon,
    this.borderRadius = 15,
  });

  final String hintText;
  final bool obscureText;
  final String? Function(String?) validator;
  final TextEditingController textEditingController;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final Widget? suffixIcon;
  final TextCapitalization textCapitalization;
  final VoidCallback? onTap;
  final ValueChanged<String>? onChanged;
  final int? maxLines;
  final TextInputAction textInputAction;
  final bool readOnly;
  final Color hintTextColor;
  final Color cursorColor;
  final void Function(String)? onFieldSubmitted;
  final Widget? prefixIcon;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: readOnly,
      controller: textEditingController,
      obscureText: obscureText,
      textCapitalization: textCapitalization,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(vertical: 20.0),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        suffixIcon: suffixIcon,
        filled: true,
        fillColor: const Color(0xffF3F8FE),
        prefixIcon: prefixIcon,
      ),
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: cursorColor,
      inputFormatters: inputFormatters,
      validator: validator,
      onTap: onTap,
      onChanged: onChanged,
      maxLines: maxLines,
      onTapOutside: (event) {
        // Below command is for dispose the keyboard when
        //the user clicks outside of the text field.
        FocusManager.instance.primaryFocus?.unfocus();
      },
      onFieldSubmitted: (value) {
        if (onFieldSubmitted != null) {
          onFieldSubmitted!(value);
        }
      },
    );
  }
}
