import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class C03PageUI extends StatefulWidget {
  const C03PageUI({super.key});

  @override
  State<C03PageUI> createState() => _C03PageUIState();
}

class _C03PageUIState extends State<C03PageUI> {
  bool _agreedToTerms = false;

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
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
                child: Column(
                  children: [
                    SizedBox(height: screenHeight * 0.08),
                    Text(
                      'Create your account',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth > 600 ? 28 : 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenWidth * 0.08,
                      ),
                      child: Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Name',
                              hintText: 'ex: jon smith',
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
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.04,
                                vertical: screenHeight * 0.015,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
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
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.04,
                                vertical: screenHeight * 0.015,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
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
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                ),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: screenWidth * 0.04,
                                vertical: screenHeight * 0.015,
                              ),
                            ),
                          ),
                          SizedBox(height: screenHeight * 0.015),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Confirm password',
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
                                borderSide: BorderSide(
                                  color: Colors.grey[300]!,
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                                borderSide: const BorderSide(
                                  color: Colors.green,
                                ),
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
                        children: [
                          Checkbox(
                            value: _agreedToTerms,
                            onChanged: (v) =>
                                setState(() => _agreedToTerms = v ?? false),
                            activeColor: Colors.green.shade400,
                            checkColor: Colors.white,
                            side: BorderSide(
                              color: Colors.green.shade400,
                              width: 2,
                            ),
                          ),
                          Expanded(
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'I understood the ',
                                    style: TextStyle(
                                      color: Colors.grey[600],
                                      fontSize: 13,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'terms & policy',
                                    style: const TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 13,
                                    ),
                                  ),
                                ],
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
                            backgroundColor: Colors.green.shade400,
                            padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.018,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                            elevation: 6,
                            shadowColor: Colors.green.withOpacity(0.35),
                            splashFactory: NoSplash.splashFactory,
                          ),
                          child: Text(
                            'SIGN UP',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: screenWidth > 600 ? 18 : 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      'or sign up with',
                      style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                    ),
                    SizedBox(height: screenHeight * 0.015),
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
                    SizedBox(height: screenHeight * 0.02),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Have an account? ',
                            style: TextStyle(
                              color: Colors.grey[600],
                              fontSize: 14,
                            ),
                          ),
                          TextSpan(
                            text: 'SIGN IN',
                            style: const TextStyle(
                              color: Colors.green,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                  ],
                ),
              ),
            ),

            // logo top-right with a subtle rotated effect
            Positioned(
              top: screenHeight * 0.02,
              right: screenWidth * 0.04,
              child: Transform.rotate(
                angle: -0.05,
                child: Container(
                  width: 72,
                  height: 72,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 8,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/C01PageLogo.png',
                      width: 48,
                      height: 48,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),

            // back button top-left
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
