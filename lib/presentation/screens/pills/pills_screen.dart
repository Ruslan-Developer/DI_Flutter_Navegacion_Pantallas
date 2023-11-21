import 'package:flutter/material.dart';

class PastillasScreen extends StatelessWidget {
  const PastillasScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Si tiene un Scaffold, sabemos que es una pantalla
      appBar: AppBar(
        title: const Text('Las Pastillas'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}