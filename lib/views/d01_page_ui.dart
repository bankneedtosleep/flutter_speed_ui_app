import 'package:flutter/material.dart';

class D01PageUI extends StatefulWidget {
  const D01PageUI({super.key});

  @override
  State<D01PageUI> createState() => _D01PageUIState();
}

class _D01PageUIState extends State<D01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D01 Page')),
      body: const Center(child: Text('D01 Page Screen')),
    );
  }
}
