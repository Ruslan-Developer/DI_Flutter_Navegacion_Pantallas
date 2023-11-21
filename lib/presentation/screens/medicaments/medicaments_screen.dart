import 'package:flutter/material.dart';

class MedicamentosScreen extends StatelessWidget {
  const MedicamentosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( //Si tiene un Scaffold, sabemos que es una pantalla
      appBar: AppBar(
        title: const Text('Los Medicamentos'),
        centerTitle: true,
      ),
      body: const Placeholder(),
    );
  }
}