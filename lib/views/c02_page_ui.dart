import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_ui_app/views/c03_page_ui.dart';

class C02PageUI extends StatefulWidget {
  const C02PageUI({super.key});

  @override
  State<C02PageUI> createState() => _C02PageUIState();
}

class _C02PageUIState extends State<C02PageUI> {
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
                  SizedBox(height: screenHeight * 0.04),
                  // Logo H (original asset)
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(color: Colors.green, width: 2),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/icons/C01PageLogo.png',
                        width: 56,
                        height: 56,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.03),
                  // Title
                  Text(
                    'Sign in your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 28 : 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.04),

                  // Inputs
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'ex: jon.smith@email.com',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            labelStyle: TextStyle(color: Colors.grey[600]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.green),
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
                            labelText: 'Password',
                            hintText: '••••••••',
                            hintStyle: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 14,
                            ),
                            labelStyle: TextStyle(color: Colors.grey[600]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(color: Colors.grey[300]!),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(color: Colors.green),
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

                  SizedBox(height: screenHeight * 0.04),
                  // Sign In button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade400,
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.018,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        elevation: 5,
                        shadowColor: Colors.green.withOpacity(0.4),
                        splashFactory: NoSplash.splashFactory,
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Text(
                          'SIGN IN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 18 : 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            letterSpacing: 0.8,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.03),
                  Text(
                    'or sign in with',
                    style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                  ),
                  SizedBox(height: screenHeight * 0.02),

                  // Social buttons (brand colors)
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSocialButton(
                        FontAwesomeIcons.google,
                        Colors.grey[200]!,
                        const Color(0xFFDB4437),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      _buildSocialButton(
                        FontAwesomeIcons.facebook,
                        Colors.grey[200]!,
                        const Color(0xFF1877F2),
                      ),
                      SizedBox(width: screenWidth * 0.04),
                      _buildSocialButton(
                        FontAwesomeIcons.twitter,
                        Colors.grey[200]!,
                        const Color(0xFF1DA1F2),
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
                          text: 'SIGN UP',
                          style: const TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const C03PageUI(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.04),
                ],
              ),
            ),

            // Back button
            Positioned(
              top: screenHeight * 0.01,
              left: screenWidth * 0.02,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.9),
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
