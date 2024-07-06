import 'package:cafiil_job_test/core/utils/app_styles.dart';
import 'package:cafiil_job_test/core/utils/constent_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.onChanged,
    this.isPassword = false,
    this.validator,
    required this.text,
    this.controller,
    this.prefixIcon,
  });
  final IconData? prefixIcon;
  final bool? isPassword;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final String text;
  final TextEditingController? controller;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool _isObscured = false;

  void _toggleVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: AppStyles.styleSemiBold16.copyWith(
        color: primaryColor,
      ),
      controller: widget.controller,
      validator: widget.validator,
      onChanged: widget.onChanged,
      obscureText: _isObscured ? true : false,
      decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          hintText: widget.text,
          hintStyle: AppStyles.styleSemiBold16.copyWith(
            color: Colors.grey[500],
          ),
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 10.0, vertical: 8),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.5,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor, width: 1.5),
            borderRadius: BorderRadius.circular(8),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: primaryColor,
              width: 1.5,
            ),
          ),
          prefixIcon: widget.prefixIcon == null
              ? null
              : Icon(
                  widget.prefixIcon,
                  size: 20,
                  color: primaryColor,
                ),
          suffixIcon: widget.isPassword == true
              ? GestureDetector(
                  onTap: _toggleVisibility,
                  child: _isObscured
                      ? const Icon(
                          color: primaryColor,
                          Icons.visibility_off,
                          size: 20,
                        )
                      : const Icon(
                          Icons.visibility,
                          color: primaryColor,
                          size: 20,
                        ),
                )
              : null),
    );
  }
}
