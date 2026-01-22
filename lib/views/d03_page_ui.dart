import 'package:flutter/material.dart';

class D03PageUI extends StatefulWidget {
  const D03PageUI({super.key});

  @override
  State<D03PageUI> createState() => _D03PageUIState();
}

class _D03PageUIState extends State<D03PageUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('D03 Page')),
      body: const Center(child: Text('D03 Page Screen')),
    );
  }
}
