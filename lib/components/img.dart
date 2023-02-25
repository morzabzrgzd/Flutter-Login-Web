import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants/app_color.dart';

class Img extends StatelessWidget {
  const Img({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Container(
        color: AppColor.bgImageColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image.png',
              scale: 2,
            ),
            const SizedBox(height: 25),
            Text(
              'Turn your ideas into reality.',
              style: GoogleFonts.nunitoSans(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: AppColor.primeryColor,
              ),
            ),
            Text(
              'Start for free and get attractive offers from the community',
              style: GoogleFonts.nunitoSans(
                fontSize: 25,
                color: AppColor.primeryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
