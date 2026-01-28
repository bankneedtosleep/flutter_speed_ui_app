import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_ui_app/views/d03_page_ui.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_speed_ui_app/views/d07_page_ui.dart';

class D02PageUI extends StatefulWidget {
  const D02PageUI({super.key});

  @override
  State<D02PageUI> createState() => _D02PageUIState();
}

class _D02PageUIState extends State<D02PageUI> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: screenHeight * 0.03),
                  Text(
                    'Welcome back! Glad\nto see you. Again!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      height: 1.3,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Enter your email',
                            hintText: 'ex: jon.smith@email.com',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            labelStyle: TextStyle(color: Colors.grey[600]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenHeight * 0.015,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: 'Enter your password',
                            hintText: '••••••••',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            labelStyle: TextStyle(color: Colors.grey[600]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(color: Colors.black),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.04,
                              vertical: screenHeight * 0.015,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const D03PageUI(),
                            ),
                          ),
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 13,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.018,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          splashFactory: NoSplash.splashFactory,
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Text(
                    'Or Login with',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: screenHeight * 0.015),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialButton(
                        FontAwesomeIcons.facebook,
                        Colors.grey[200]!,
                        const Color(0xFF1877F2),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      _buildSocialButton(
                        FontAwesomeIcons.google,
                        Colors.grey[200]!,
                        const Color(0xFFDB4437),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      _buildSocialButton(
                        FontAwesomeIcons.apple,
                        Colors.grey[200]!,
                        Colors.black,
                      ),
                    ],
                  ),
                  SizedBox(height: screenHeight * 0.03),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an account? ",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Register Now',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const D07PageUI(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.03),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.02,
              left: screenWidth * 0.02,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  iconSize: 26,
                  padding: const EdgeInsets.all(8),
                  splashRadius: 22,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSocialButton(
    IconData icon,
    Color backgroundColor,
    Color iconColor,
  ) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.14,
      height: screenWidth * 0.14,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.08),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Center(child: FaIcon(icon, size: 22, color: iconColor)),
    );
  }
}
