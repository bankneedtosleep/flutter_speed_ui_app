import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter_speed_ui_app/views/e01_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e04_page_ui.dart';
import 'package:flutter_speed_ui_app/views/e03_page_ui.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  // ================= TOP IMAGE =================
                  Stack(
                    children: [
                      ClipPath(
                        clipper: BottomCurveClipper(),
                        child: Container(
                          height: h * 0.38,
                          width: double.infinity,
                          color: const Color(0xFFFFC83D),
                          child: Image.asset(
                            'assets/images/Emain.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // ===== Back to E01 =====
                      Positioned(
                        top: 16,
                        left: 16,
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_back),
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const E01PageUI(),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ================= TEXT =================
                  const Text(
                    'Welcome back',
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Login to your account',
                    style: TextStyle(color: Colors.grey[600]),
                  ),

                  const SizedBox(height: 24),

                  // ================= INPUTS =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter email or phone',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16),
                        TextField(
                          obscureText: _obscurePassword,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              icon: Icon(
                                _obscurePassword
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                              onPressed: () {
                                setState(() {
                                  _obscurePassword = !_obscurePassword;
                                });
                              },
                            ),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ================= FORGOT =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E04PageUI(),
                            ),
                          );
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ================= LOGIN BUTTON =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFA726),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Log In',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ================= OR =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.12),
                    child: Row(
                      children: [
                        Expanded(child: Divider(color: Colors.orange[300])),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 12),
                          child: Text('OR'),
                        ),
                        Expanded(child: Divider(color: Colors.orange[300])),
                      ],
                    ),
                  ),

                  const SizedBox(height: 18),

                  // ================= SOCIAL =================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _social(FontAwesomeIcons.google, Colors.red),
                      const SizedBox(width: 18),
                      _social(FontAwesomeIcons.facebook, Colors.blue),
                      const SizedBox(width: 18),
                      _social(FontAwesomeIcons.apple, Colors.black),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // ================= REGISTER =================
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don’t have an Account? ",
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Create Account',
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const E03PageUI(),
                                ),
                              );
                            },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _social(IconData icon, Color color) {
    return CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey[200],
      child: FaIcon(icon, color: color, size: 20),
    );
  }
}

// ================= CLIPPER =================
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
