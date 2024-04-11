import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextsSystem {
  static const String fontFamily = "Raleway";

  static TextStyle get titleTextStyle {
    return TextStyle(
      fontFamily: TextsSystem.fontFamily,
      fontStyle: FontStyle.normal,
      fontSize: 20.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  static TextStyle get subTitleTextStyle {
    return TextStyle(
      fontFamily: TextsSystem.fontFamily,
      fontStyle: FontStyle.normal,
      fontSize: 16.sp,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    );
  }

  static TextStyle get regularTextStyle {
    return TextStyle(
      fontFamily: TextsSystem.fontFamily,
      fontStyle: FontStyle.normal,
      fontSize: 12.sp,
      color: Colors.black,
    );
  }

  static TextStyle get linkStyle {
    return TextStyle(
      fontFamily: TextsSystem.fontFamily,
      fontStyle: FontStyle.normal,
      fontSize: 12.sp,
      color: const Color(0xFF858585),
    );
  }
}
