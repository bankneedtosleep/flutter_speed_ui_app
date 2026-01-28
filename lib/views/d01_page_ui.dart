import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/d02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/d07_page_ui.dart';

class D01PageUI extends StatefulWidget {
  const D01PageUI({super.key});

  @override
  State<D01PageUI> createState() => _D01PageUIState();
}

class _D01PageUIState extends State<D01PageUI> {
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
                  // Top Image Section
                  Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: const Color(0xFFD4E8F0),
                      image: DecorationImage(
                        image: AssetImage('assets/images/D01PageUI.png'),
                        fit: BoxFit.cover,
                        alignment: Alignment.topCenter,
                      ),
                    ),
                  ),

                  SizedBox(height: 0.001 * screenHeight),

                  // Logo section
                  Column(
                    children: [
                      Container(
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(shape: BoxShape.circle),
                        child: Center(
                          child: Image.asset(
                            'assets/icons/D01logo.png',
                            width: 50,
                            height: 50,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          children: [
                            const TextSpan(
                              text: 'Fruzz',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            TextSpan(
                              text: 'digital',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: screenHeight * 0.06),

                  // Login button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const D02PageUI(),
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
                          elevation: 0,
                          splashFactory: NoSplash.splashFactory,
                        ),
                        child: const Text(
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

                  SizedBox(height: screenHeight * 0.015),

                  // Register button
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: screenWidth * 0.1,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const D07PageUI(),
                            ),
                          );
                        },

                        style: OutlinedButton.styleFrom(
                          padding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.018,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          side: const BorderSide(
                            color: Colors.black,
                            width: 1.5,
                          ),
                        ),
                        child: const Text(
                          'Register',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.015),

                  // Continue as guest
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Continue as a guest',
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF00BCD4),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),

                  SizedBox(height: screenHeight * 0.03),
                ],
              ),
            ),
            // Back button
            Positioned(
              top: 16,
              left: 16,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    borderRadius: BorderRadius.circular(12),
                    child: const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(
                        Icons.arrow_back,
                        color: Colors.black,
                        size: 24,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
