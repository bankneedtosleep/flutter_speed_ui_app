import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_speed_ui_app/views/e06_page_ui.dart';

class E05PageUI extends StatefulWidget {
  const E05PageUI({super.key});

  @override
  State<E05PageUI> createState() => _E05PageUIState();
}

class _E05PageUIState extends State<E05PageUI> {
  final List<TextEditingController> _controllers = List.generate(
    4,
    (_) => TextEditingController(),
  );

  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void dispose() {
    for (final controller in _controllers) {
      controller.dispose();
    }
    for (final node in _focusNodes) {
      node.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: h * 0.02),

                  // ================= TITLE =================
                  const Text(
                    'OTP Verification',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: h * 0.03),

                  // ================= IMAGE =================
                  SizedBox(
                    height: h * 0.28,
                    child: Image.asset(
                      'assets/images/E05photo.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  SizedBox(height: h * 0.04),

                  // ================= TEXT =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Enter OTP',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          'An 4 digit code has been sent to your email',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: h * 0.03),

                  // ================= OTP BOXES =================
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(4, (index) => _otpBox(index)),
                  ),

                  SizedBox(height: h * 0.025),

                  // ================= TIMER =================
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'You should recieve the OTP in ',
                          style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 12,
                          ),
                        ),
                        const TextSpan(
                          text: '30 Second',
                          style: TextStyle(
                            color: Colors.orange,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: h * 0.04),

                  // ================= VERIFY BUTTON =================
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: w * 0.1),
                    child: SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const E06PageUI(),
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
                          'Verify',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: h * 0.05),
                ],
              ),
            ),

            // ================= BACK BUTTON =================
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
      ),
    );
  }

  // ================= OTP BOX =================
  Widget _otpBox(int index) {
    return Container(
      width: 52,
      height: 52,
      margin: const EdgeInsets.symmetric(horizontal: 6),
      child: TextField(
        controller: _controllers[index],
        focusNode: _focusNodes[index],
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        maxLength: 1,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && index < 3) {
            _focusNodes[index + 1].requestFocus();
          }
          if (value.isEmpty && index > 0) {
            _focusNodes[index - 1].requestFocus();
          }
        },
      ),
    );
  }
}
