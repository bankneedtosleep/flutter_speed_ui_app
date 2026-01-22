import 'package:flutter/material.dart';

class C03PageUI extends StatefulWidget {
  const C03PageUI({super.key});

  @override
  State<C03PageUI> createState() => _C03PageUIState();
}

class _C03PageUIState extends State<C03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('C03 Page')),
      body: const Center(child: Text('C03 Page Screen')),
    );
  }
}
