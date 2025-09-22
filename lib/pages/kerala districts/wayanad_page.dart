import 'package:flutter/material.dart';

class WayanadPage extends StatelessWidget {
  const WayanadPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wayanad')),
      body: const Center(child: Text('Welcome to Wayanad!')),
    );
  }
}
