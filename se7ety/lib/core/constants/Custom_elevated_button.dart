import 'package:flutter/material.dart';
import 'package:se7ety/core/utils/Colors.dart';
import 'package:se7ety/core/utils/Font_style.dart';

class CustomElevatedButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomElevatedButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: 360,height: 60 ,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xff0c8fad), // Background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25), // Rounded corners
          ),
          padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 30), // Padding
          elevation: 5, // Shadow effect
           // Custom text style
        ),
        child: Text(buttonText,style:  getTitleTextStyle(fontSize: 18,color: AppColors.Whight)),
      ),
    );
  }
}
