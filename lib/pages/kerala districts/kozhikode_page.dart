import 'package:flutter/material.dart';

class KozhikodePage extends StatelessWidget {
  const KozhikodePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kozhikode')),
      body: const Center(child: Text('Welcome to Kozhikode!')),
    );
  }
}
