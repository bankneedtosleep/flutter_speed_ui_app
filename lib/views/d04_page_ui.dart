import 'package:flutter/material.dart';

class D04PageUI extends StatefulWidget {
  const D04PageUI({super.key});

  @override
  State<D04PageUI> createState() => _D04PageUIState();
}

class _D04PageUIState extends State<D04PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D04 Page')),
      body: const Center(child: Text('D04 Page Screen')),
    );
  }
}
