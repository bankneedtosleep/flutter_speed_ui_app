import 'package:flutter/material.dart';

class C01PageUI extends StatefulWidget {
  const C01PageUI({super.key});

  @override
  State<C01PageUI> createState() => _C01PageUIState();
}

class _C01PageUIState extends State<C01PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('C01 Page')),
      body: const Center(child: Text('C01 Page Screen')),
    );
  }
}
