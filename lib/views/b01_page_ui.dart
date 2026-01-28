import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/b02_page_ui.dart';
import 'package:flutter_speed_ui_app/views/b03_page_ui.dart';

class B01PageUI extends StatefulWidget {
  const B01PageUI({super.key});

  @override
  State<B01PageUI> createState() => _B01PageUIState();
}

class _B01PageUIState extends State<B01PageUI> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // ส่วนรูปภาพพื้นหลังสีเทาพร้อมปุ่มกลับ
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.4,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    child: Center(
                      child: Image.asset(
                        'assets/images/B01PageUI.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // ปุ่มกลับ
                  Positioned(
                    top: screenHeight * 0.01,
                    left: screenWidth * 0.02,
                    child: IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.black,
                      iconSize: 28,
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.04),
              // ส่วนข้อความและปุ่ม
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08,
                  vertical: screenHeight * 0.02,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // หัวข้อ
                    Text(
                      'Discover Your\nDream Job here',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth > 600 ? 36 : 32,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xFF0052CC), // สีน้ำเงิน
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    // ข้อความอธิบาย
                    Text(
                      'Explore all the existing job roles based on your interest and study major',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: screenWidth > 600 ? 16 : 14,
                        color: Colors.grey[600],
                        height: 1.5,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    // ปุ่ม
                    Row(
                      children: [
                        // ปุ่ม Login - สีน้ำเงิน
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const B02PageUI(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFF0052CC),
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              splashFactory: NoSplash.splashFactory,
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(
                                fontSize: screenWidth > 600 ? 18 : 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: screenWidth * 0.04),
                        // ปุ่ม Register - สีเทา
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const B03PageUi(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              splashFactory: NoSplash.splashFactory,
                            ),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontSize: screenWidth > 600 ? 18 : 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.02),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
