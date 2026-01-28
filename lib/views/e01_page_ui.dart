import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/views/e02_page_ui.dart';

class E01PageUI extends StatefulWidget {
  const E01PageUI({super.key});

  @override
  State<E01PageUI> createState() => _E01PageUIState();
}

class _E01PageUIState extends State<E01PageUI> {
  @override
  Widget build(BuildContext context) {
    // ใช้ MediaQuery เพื่อเช็คความสูงของหน้าจอ
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ปุ่มย้อนกลับ
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 12, top: 12),
                child: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back),
                  color: Colors.black,
                  iconSize: 28,
                ),
              ),
            ),
            // ส่วนของรูปภาพ
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(
                  'assets/images/E01photo.png',
                  fit: BoxFit.contain,
                ),
              ),
            ),

            // ส่วนของเนื้อหาด้านล่าง
            Expanded(
              flex: 4,
              child: Column(
                children: [
                  Text(
                    'BERRY JUICE',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: screenHeight * 0.035,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      shadows: [
                        Shadow(
                          color: const Color.fromARGB(
                            255,
                            255,
                            153,
                            0,
                          ).withOpacity(0.5),
                          offset: const Offset(2, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  const Text(
                    'A "Moments of healthy sip"\nThe best vitamin for your health',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 60, 60, 60),
                      height: 1.5,
                    ),
                  ),
                  SizedBox(height: screenHeight * 0.17),
                  // ปุ่ม Get Started
                  SizedBox(
                    width: screenHeight * 0.25,
                    height: screenHeight * 0.06,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const E02PageUI(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 153, 0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Text(
                        'Explore Now',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
