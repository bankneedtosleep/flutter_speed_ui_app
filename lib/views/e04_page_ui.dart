import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'e05_page_ui.dart';

class E04PageUI extends StatefulWidget {
  const E04PageUI({super.key});

  @override
  State<E04PageUI> createState() => _E04PageUIState();
}

class _E04PageUIState extends State<E04PageUI> {
  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
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

                  const SizedBox(height: 24),

                  // ================= TEXT =================
                  const Text(
                    'Forgot your password?',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 6),
                  Text(
                    'Enter email address',
                    style: TextStyle(color: Colors.grey[600], fontSize: 13),
                  ),

                  const SizedBox(height: 28),

                  // ================= EMAIL INPUT =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: TextField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        hintText: 'Email address',
                        isDense: true,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 14,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ================= SEND CODE BUTTON =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E05PageUI(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFFFFA726),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                        ),
                        child: const Text(
                          'Send code',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(height: 36),

                  // ================= REGISTER LINK =================
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Don't have an Account? ",
                          style: TextStyle(color: Colors.grey[600]),
                        ),
                        TextSpan(
                          text: 'Create Account',
                          style: TextStyle(
                            color: Colors.orange[700],
                            fontWeight: FontWeight.bold,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pop(context);
                            },
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 30),
                ],
              ),
            );
          },
        ),
      ),
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
