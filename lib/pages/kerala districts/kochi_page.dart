import 'package:flutter/material.dart';

class KochiPage extends StatelessWidget {
  const KochiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kochi')),
      body: const Center(child: Text('Welcome to Kochi!')),
    );
  }
}
