import 'package:flutter/material.dart';

class E02PageUI extends StatefulWidget {
  const E02PageUI({super.key});

  @override
  State<E02PageUI> createState() => _E02PageUIState();
}

class _E02PageUIState extends State<E02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E02 Page')),
      body: const Center(child: Text('E02 Page Screen')),
    );
  }
}
