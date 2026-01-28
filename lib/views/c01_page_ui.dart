import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/c02_page_ui.dart';

class C01PageUI extends StatefulWidget {
  const C01PageUI({super.key});

  @override
  State<C01PageUI> createState() => _C01PageUIState();
}

class _C01PageUIState extends State<C01PageUI> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          // พื้นหลังรูปภาพเต็มหน้าจอ
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/C01Pagebackground.png',
              fit: BoxFit.cover,
            ),
          ),

          // เลเยอร์ gradient overlay สีดำจางๆ
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.black.withOpacity(0.1),
                  Colors.black.withOpacity(0.3),
                ],
              ),
            ),
          ),

          // เนื้อหาหลัก
          SafeArea(
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // Logo 
                        Container(
                          width: 90,
                          height: 90,
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.0),
                            borderRadius: BorderRadius.circular(18),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.18),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/icons/C01PageLogo.png',
                              width: 64,
                              height: 64,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.05),

                        // ข้อความหลัก "HOPE FOR HUMANITY"
                        Text(
                          'HOPE FOR\nHUMANITY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 40 : 36,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                            height: 1.3,
                            shadows: [
                              Shadow(
                                color: const Color.fromARGB(
                                  255,
                                  110,
                                  110,
                                  110,
                                ).withOpacity(0.5),
                                offset: const Offset(2, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.03),

                        // ข้อความรอง "Welcome to hope for humanity"
                        Text(
                          'Welcome to\nhope for humanity',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: screenWidth > 600 ? 18 : 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.green.shade400,
                            height: 1.4,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.3),
                                offset: const Offset(1, 1),
                                blurRadius: 2,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                // ปุ่ม GET STARTED ที่ด้านล่าง
                Padding(
                  padding: EdgeInsets.fromLTRB(
                    screenWidth * 0.08,
                    0,
                    screenWidth * 0.08,
                    screenHeight * 0.04,
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const C02PageUI(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green.shade400,
                      minimumSize: Size(double.infinity, screenHeight * 0.065),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      elevation: 8,
                      shadowColor: Colors.black.withOpacity(0.4),
                      splashFactory: NoSplash.splashFactory,
                    ),
                    child: Text(
                      'GET STARTED',
                      style: TextStyle(
                        fontSize: screenWidth > 600 ? 20 : 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // ปุ่มกลับซ้ายบน (container background เพื่อความชัด)
          Positioned(
            top: screenHeight * 0.02,
            left: screenWidth * 0.02,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.32),
                borderRadius: BorderRadius.circular(12),
              ),
              child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(Icons.arrow_back),
                color: Colors.white,
                iconSize: 28,
                padding: const EdgeInsets.all(8),
                splashRadius: 24,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
