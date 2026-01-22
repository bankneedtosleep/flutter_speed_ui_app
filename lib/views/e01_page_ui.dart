import 'package:flutter/material.dart';

class E01PageUI extends StatefulWidget {
  const E01PageUI({super.key});

  @override
  State<E01PageUI> createState() => _E01PageUIState();
}

class _E01PageUIState extends State<E01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('E01 Page')),
      body: const Center(child: Text('E01 Page Screen')),
    );
  }
}
