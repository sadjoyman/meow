import 'package:flutter/material.dart';

class TrivandrumPage extends StatelessWidget {
  const TrivandrumPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Trivandrum')),
      body: const Center(child: Text('Welcome to Trivandrum!')),
    );
  }
}
