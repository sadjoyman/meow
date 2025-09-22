import 'package:flutter/material.dart';

class KannurPage extends StatelessWidget {
  const KannurPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kannur')),
      body: const Center(child: Text('Welcome to Kannur!')),
    );
  }
}
