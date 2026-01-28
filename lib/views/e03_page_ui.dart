import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/gestures.dart';

class E03PageUI extends StatefulWidget {
  const E03PageUI({super.key});

  @override
  State<E03PageUI> createState() => _E03PageUIState();
}

class _E03PageUIState extends State<E03PageUI> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            // 🔥 ความสูงรูปบน ปรับตามจอ แต่ไม่เกิน
            final topHeight = constraints.maxHeight < 700 ? 260.0 : 300.0;

            return SingleChildScrollView(
              child: Column(
                children: [
                  // ================= TOP IMAGE =================
                  Stack(
                    children: [
                      ClipPath(
                        clipper: BottomCurveClipper(),
                        child: Container(
                          height: topHeight,
                          width: double.infinity,
                          color: const Color(0xFFFFC83D),
                          child: Image.asset(
                            'assets/images/Emain.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Back button
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
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 18),

                  // ================= TEXT =================
                  const Text(
                    'Register',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    'Create your new account',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),

                  const SizedBox(height: 20),

                  // ================= INPUTS =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: Column(
                      children: [
                        _inputField('Name'),
                        const SizedBox(height: 12),
                        _inputField('E-mail'),
                        const SizedBox(height: 12),
                        _inputField('Phone'),
                        const SizedBox(height: 12),
                        _passwordField(),
                      ],
                    ),
                  ),

                  const SizedBox(height: 10),

                  // ================= TERMS =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 11.5,
                        ),
                        children: [
                          const TextSpan(
                            text: 'By signing up you agree to our ',
                          ),
                          TextSpan(
                            text: 'Terms & Conditions',
                            style: TextStyle(
                              color: Colors.orange[700],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              color: Colors.orange[700],
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ================= SIGN UP BUTTON =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFA726),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ================= OR =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.12),
                    child: Row(
                      children: [
                        Expanded(child: Divider(color: Colors.orange[300])),
                        const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text('OR'),
                        ),
                        Expanded(child: Divider(color: Colors.orange[300])),
                      ],
                    ),
                  ),

                  const SizedBox(height: 14),

                  // ================= SOCIAL =================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _social(FontAwesomeIcons.google, Colors.red),
                      const SizedBox(width: 16),
                      _social(FontAwesomeIcons.facebook, Colors.blue),
                      const SizedBox(width: 16),
                      _social(FontAwesomeIcons.apple, Colors.black),
                    ],
                  ),

                  const SizedBox(height: 18),

                  // ================= LOGIN LINK =================
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Already have an Account? ',
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        TextSpan(
                          text: 'Log In',
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Navigator.pop(context),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  // ================= WIDGETS =================

  Widget _inputField(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  Widget _passwordField() {
    return TextField(
      obscureText: _obscurePassword,
      decoration: InputDecoration(
        hintText: 'Password',
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 14,
        ),
        suffixIcon: IconButton(
          icon: Icon(
            _obscurePassword ? Icons.visibility_off : Icons.visibility,
            size: 20,
          ),
          onPressed: () {
            setState(() {
              _obscurePassword = !_obscurePassword;
            });
          },
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(14)),
      ),
    );
  }

  Widget _social(IconData icon, Color color) {
    return CircleAvatar(
      radius: 21,
      backgroundColor: Colors.grey[200],
      child: FaIcon(icon, color: color, size: 18),
    );
  }
}

// ================= CLIPPER =================
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 50);
    path.quadraticBezierTo(
      size.width / 2,
      size.height,
      size.width,
      size.height - 50,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
