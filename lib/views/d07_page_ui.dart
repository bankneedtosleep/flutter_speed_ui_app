import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';

class D07PageUI extends StatefulWidget {
  const D07PageUI({super.key});

  @override
  State<D07PageUI> createState() => _D07PageUIState();
}

class _D07PageUIState extends State<D07PageUI> {
  bool hidePassword = true;
  bool hideConfirmPassword = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.08),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),

                // 🔙 Back Button
                IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios_new),
                ),

                const SizedBox(height: 20),

                // 📝 Title
                const Text(
                  'Hello! Register to get started',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),

                const SizedBox(height: 30),

                // 👤 Username
                _inputField(hint: 'Username'),

                const SizedBox(height: 15),

                // 📧 Email
                _inputField(hint: 'Email'),

                const SizedBox(height: 15),

                // 🔒 Password
                _passwordField(
                  hint: 'Password',
                  hide: hidePassword,
                  toggle: () {
                    setState(() {
                      hidePassword = !hidePassword;
                    });
                  },
                ),

                const SizedBox(height: 15),

                // 🔒 Confirm Password
                _passwordField(
                  hint: 'Confirm password',
                  hide: hideConfirmPassword,
                  toggle: () {
                    setState(() {
                      hideConfirmPassword = !hideConfirmPassword;
                    });
                  },
                ),

                const SizedBox(height: 30),

                // 🖤 Register Button
                SizedBox(
                  width: double.infinity,
                  height: screenHeight * 0.065,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF1F2933),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Register',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                // OR
                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Text('Or Register with'),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 25),

                // 🌐 Social Buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildSocialButton(
                      FontAwesomeIcons.facebookF,
                      Colors.white,
                      const Color(0xFF1877F2),
                    ),
                    _buildSocialButton(
                      FontAwesomeIcons.google,
                      Colors.white,
                      const Color(0xFFDB4437),
                    ),
                    _buildSocialButton(
                      FontAwesomeIcons.apple,
                      Colors.white,
                      Colors.black,
                    ),
                  ],
                ),

                const SizedBox(height: 30),

                // 🔁 Login Now (กดได้แล้ว)
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const D02PageUI(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Already have an account? '),
                      Text(
                        'Login Now',
                        style: TextStyle(
                          color: Colors.teal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // 🔹 TextField ปกติ
  Widget _inputField({required String hint}) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // 🔹 Password Field
  Widget _passwordField({
    required String hint,
    required bool hide,
    required VoidCallback toggle,
  }) {
    return TextField(
      obscureText: hide,
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: const Color(0xFFF8FAFC),
        suffixIcon: IconButton(
          icon: Icon(hide ? Icons.visibility_off : Icons.visibility),
          onPressed: toggle,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }

  // 🔹 Social Button
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
