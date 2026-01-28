import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d04_page_ui.dart';

class D03PageUI extends StatefulWidget {
  const D03PageUI({super.key});

  @override
  State<D03PageUI> createState() => _D03PageUIState();
}

class _D03PageUIState extends State<D03PageUI> {
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
                  SizedBox(height: screenHeight * 0.08),
                  Text(
                    'Forgot Password?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: Text(
                      "Don't worry! It occurs. Please enter the email\naddress linked with your account.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.05),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: TextField(
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
                  ),
                  SizedBox(height: screenHeight * 0.04),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.08,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const D04PageUI(),
                          ),
                        ),
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
                          'Send Code',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.06),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Remember Password? ',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 14,
                          ),
                        ),
                        TextSpan(
                          text: 'Login',
                          style: const TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
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
}
