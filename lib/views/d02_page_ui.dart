import 'package:flutter/material.dart';

class D02PageUI extends StatefulWidget {
  const D02PageUI({super.key});

  @override
  State<D02PageUI> createState() => _D02PageUIState();
}

class _D02PageUIState extends State<D02PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D02 Page')),
      body: const Center(child: Text('D02 Page Screen')),
    );
  }
}
