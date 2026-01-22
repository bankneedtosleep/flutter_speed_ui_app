import 'package:flutter/material.dart';

class D05PageUI extends StatefulWidget {
  const D05PageUI({super.key});

  @override
  State<D05PageUI> createState() => _D05PageUIState();
}

class _D05PageUIState extends State<D05PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D05 Page')),
      body: const Center(child: Text('D05 Page Screen')),
    );
  }
}
