import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class B02PageUI extends StatefulWidget {
  const B02PageUI({super.key});

  @override
  State<B02PageUI> createState() => _B02PageUIState();
}

class _B02PageUIState extends State<B02PageUI> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.08,
              vertical: screenHeight * 0.02,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(Icons.arrow_back),
                    color: Colors.black,
                    iconSize: 28,
                    padding: EdgeInsets.zero,
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Text(
                  'Login here',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 36 : 32,
                    fontWeight: FontWeight.bold,
                    color: const Color(0xFF0052CC),
                  ),
                ),
                SizedBox(height: screenHeight * 0.01),
                Text(
                  "Welcome back you've\nbeen missed!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: screenWidth > 600 ? 18 : 16,
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    height: 1.4,
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    filled: true,
                    fillColor: Colors.grey[100],
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color(0xFF0052CC),
                        width: 1.5,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.018,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: TextStyle(color: Colors.grey[500]),
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.04,
                      vertical: screenHeight * 0.018,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot your password?',
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 16 : 14,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF0052CC),
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0052CC),
                    minimumSize: Size(double.infinity, screenHeight * 0.065),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 20 : 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.02),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Create new account',
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 16 : 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey[600],
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.1),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Or continue with',
                    style: TextStyle(
                      fontSize: screenWidth > 600 ? 16 : 14,
                      color: const Color(0xFF0052CC),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _socialIconButton(FontAwesomeIcons.google),
                    SizedBox(width: screenWidth * 0.06),
                    _socialIconButton(FontAwesomeIcons.facebook),
                    SizedBox(width: screenWidth * 0.06),
                    _socialIconButton(FontAwesomeIcons.apple),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _socialIconButton(IconData icon) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.grey[200],
      ),
      child: IconButton(
        onPressed: () {},
        icon: FaIcon(icon, color: Colors.black, size: 24),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
