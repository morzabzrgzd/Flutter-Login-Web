import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/custom_textField.dart';
import '../components/google_sign_in.dart';
import '../components/img.dart';
import '../constants/app_color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const Img(),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 160),
              color: AppColor.bgLoginColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset('assets/images/logo.png'),
                  const SizedBox(height: 35),
                  Text(
                    'Login to your Account',
                    style: GoogleFonts.nunitoSans(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                      color: AppColor.text1Color,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'See what is going on with your business',
                    style: GoogleFonts.nunitoSans(
                      fontSize: 18,
                      color: AppColor.text1Color,
                    ),
                  ),
                  const SizedBox(height: 30),
                  const GoogleSignInBtn(),
                  const SizedBox(height: 35),
                  Center(
                    child: Text(
                      '------------- or Sign in with Email -------------',
                      style: GoogleFonts.nunitoSans(
                        fontSize: 14,
                        color: AppColor.text3Color,
                      ),
                    ),
                  ),
                  const SizedBox(height: 35),
                  const CustomTextField(
                    hintText: 'mail@abc.com',
                    obscureText: false,
                    title: 'Email',
                  ),
                  const SizedBox(height: 25),
                  const CustomTextField(
                    hintText: 'Password',
                    obscureText: true,
                    title: 'Password',
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Checkbox(
                        value: true,
                        activeColor: AppColor.primeryColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        ),
                        side: const BorderSide(
                          width: 1.2,
                          color: AppColor.borderColor,
                        ),
                        onChanged: (value) {},
                      ),
                      Text(
                        'Remember Me',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 16,
                          color: AppColor.text2Color,
                        ),
                      ),
                      const Spacer(),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget Password?',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 16,
                            color: AppColor.primeryColor,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                        backgroundColor: AppColor.primeryColor,
                        elevation: 0,
                        shadowColor: Colors.transparent,
                      ),
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 45),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Not Registered Yet?',
                        style: GoogleFonts.nunitoSans(
                          fontSize: 18,
                          color: AppColor.text2Color,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'Create an account',
                          style: GoogleFonts.nunitoSans(
                            fontSize: 18,
                            color: AppColor.primeryColor,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
