import 'package:flutter/material.dart';
import 'package:se7ety/core/utils/Colors.dart';


//-------------------Title Text--------------------

TextStyle getTitleTextStyle( {

  double? fontSize,
  Color? color, 
  FontWeight? fontWeight,
  

   }) {

  return TextStyle(
      fontSize: fontSize ?? 18,
      color: color ?? AppColors.Primary,
      fontWeight: fontWeight ?? FontWeight.w700,
      fontFamily: "cairo"
      );
}



//-------------------Body Text--------------------

TextStyle getBodyTextStyle( {
  
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
 

      }) {

  return TextStyle(
      fontSize: fontSize ?? 16,
      color: color ?? AppColors.Gray,
      fontWeight: fontWeight ?? FontWeight.w500,
      fontFamily: "cairo"
      );
}



//-------------------Small Text--------------------

TextStyle getsmallTextStyle({
  
  double? fontSize,
  Color? color,
  FontWeight? fontWeight,
  String? fontFamily
      
      }) {

  return TextStyle(
      fontSize: fontSize ?? 14,
      color: color ?? AppColors.Gray,
      fontWeight: fontWeight ?? FontWeight.w400,
      fontFamily: "cairo"
      );
}
