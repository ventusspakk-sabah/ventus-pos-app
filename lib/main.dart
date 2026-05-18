import 'package:flutter/material.dart';

void main() {
  runApp(const VentusPOS());
}

class VentusPOS extends StatelessWidget {
  const VentusPOS({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ventus POS',
      home: Scaffold(
        appBar: AppBar(title: const Text('Ventus POS')),
        body: const Center(
          child: Text('System Ready'),
        ),
      ),
    );
  }
}
