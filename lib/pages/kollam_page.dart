import 'package:flutter/material.dart';

class KollamPage extends StatelessWidget {
  const KollamPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kollam')),
      body: const Center(child: Text('Welcome to Kollam!')),
    );
  }
}
