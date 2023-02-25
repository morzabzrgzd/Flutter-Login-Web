import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.title,
    required this.hintText,
    required this.obscureText,
  });

  final String title;
  final String hintText;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: GoogleFonts.nunitoSans(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: AppColor.text1Color,
          ),
        ),
        const SizedBox(height: 5),
        TextField(
          cursorColor: AppColor.primeryColor,
          cursorHeight: 21,
          obscureText: obscureText,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: GoogleFonts.nunitoSans(
              fontSize: 13,
              color: AppColor.hintTextColor,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColor.borderColor,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(
                color: AppColor.primeryColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
