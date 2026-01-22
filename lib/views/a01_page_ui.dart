import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/a02_page_ui.dart';

class A01PageUI extends StatefulWidget {
  const A01PageUI({super.key});

  @override
  State<A01PageUI> createState() => _A01PageUIState();
}

class _A01PageUIState extends State<A01PageUI> {
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
              // ส่วนรูปภาพพื้นหลังสีชมพูพร้อมปุ่มกลับ
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: screenHeight * 0.45,
                    decoration: const BoxDecoration(
                      color: Color(0xFFE85D9E), // สีชมพู
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                    ),
                    child: Center(
                      child: Image.asset(
                        'assets/images/A01Pageui.png',
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
              // ส่วนข้อความและปุ่ม
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.08,
                  vertical: screenHeight * 0.03,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        // หัวข้อ
                        Text(
                          'Discover Your\nOwn Dream House',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 32 : 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),

                        SizedBox(height: screenHeight * 0.02),

                        // ข้อความอธิบาย
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 16 : 14,
                            color: Colors.grey[600],
                            height: 1.5,
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: screenHeight * 0.04),
                    // ปุ่ม
                    Row(
                      children: [
                        // ปุ่ม Sign in - สีชมพู
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const A02PageUI(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xFFE85D9E),
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            child: Text(
                              'Sign in',
                              style: TextStyle(
                                fontSize: screenWidth > 600 ? 18 : 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),

                        SizedBox(width: screenWidth * 0.04),

                        // ปุ่ม Register - ยังไม่ทำอะไร
                        Expanded(
                          flex: 1,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.grey[200],
                              padding: EdgeInsets.symmetric(
                                vertical: screenHeight * 0.02,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
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
