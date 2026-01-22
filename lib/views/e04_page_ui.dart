import 'package:flutter/material.dart';

class E04PageUI extends StatefulWidget {
  const E04PageUI({super.key});

  @override
  State<E04PageUI> createState() => _E04PageUIState();
}

class _E04PageUIState extends State<E04PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E04 Page')),
      body: const Center(child: Text('E04 Page Screen')),
    );
  }
}
