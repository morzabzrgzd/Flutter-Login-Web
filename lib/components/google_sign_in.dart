import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class GoogleSignInBtn extends StatelessWidget {
  const GoogleSignInBtn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          elevation: 0,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          side: const BorderSide(
            color: AppColor.borderColor,
          )),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/google.png'),
            const SizedBox(width: 4),
            Text(
              'Continue with Google',
              style: GoogleFonts.nunitoSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppColor.text2Color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
