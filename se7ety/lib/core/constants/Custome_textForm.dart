import 'package:flutter/material.dart';
import 'package:se7ety/core/utils/Colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final IconData prefixIcon;
  final bool isPassword;

  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.isPassword = false, // Default to non-password field
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isObscure = true; // Toggles password visibility

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 60,
      decoration: BoxDecoration(
        color: const Color(0xffe6eef9),
        borderRadius: BorderRadius.circular(25),
      ),
      child: TextField(
        obscureText: widget.isPassword ? _isObscure : false, // Handle password visibility
        textDirection: TextDirection.ltr,
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: const TextStyle(
            fontWeight: FontWeight.w300,
            fontSize: 18,
           color:  Colors.black54,
            fontFamily: "cairo",
          ),
          prefixIcon: Icon(
            widget.prefixIcon,
            color: const Color(0xff0c8fad),
            size: 24,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.all(15),
          suffixIcon: widget.isPassword
              ? IconButton(
                  icon: Icon(
                    _isObscure ? Icons.visibility_off : Icons.visibility,
                    color: const Color(0xff0c8fad),
                  ),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure; // Toggle password visibility
                    });
                  },
                )
              : null, // No suffix icon for non-password fields
        ),
      ),
    );
  }
}
