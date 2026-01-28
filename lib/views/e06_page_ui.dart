import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';

class E06PageUI extends StatefulWidget {
  const E06PageUI({super.key});

  @override
  State<E06PageUI> createState() => _E06PageUIState();
}

class _E06PageUIState extends State<E06PageUI> {
  final TextEditingController _newPassword = TextEditingController();
  final TextEditingController _confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // ===== Header แบบ E02 =====
              Stack(
                children: [
                  ClipPath(
                    clipper: _HeaderClipper(),
                    child: Container(
                      height: h * 0.32,
                      width: double.infinity,
                      color: const Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      'assets/images/Emain.png',
                      height: h * 0.30,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    top: 16,
                    left: 16,
                    child: CircleAvatar(
                      backgroundColor: Colors.white.withOpacity(0.9),
                      child: IconButton(
                        icon: const Icon(Icons.arrow_back_ios_new, size: 16),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 32),

              // ===== Title =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: const Text(
                  'Create New Password',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
              ),

              const SizedBox(height: 8),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: Text(
                  'Enter new password',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ),

              const SizedBox(height: 24),

              // ===== New Password =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: TextField(
                  controller: _newPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Enter New password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Colors.orange,
                        width: 1.5,
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // ===== Confirm Password =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: TextField(
                  controller: _confirmPassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm password',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // ===== Submit Button =====
              Padding(
                padding: EdgeInsets.symmetric(horizontal: w * 0.08),
                child: SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange[600],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const E02PageUI(),
                        ),
                      );
                    },
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ===== Header Clipper (เดียวกับ E02) =====
class _HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
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
