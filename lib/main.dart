import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';
import 'package:widgets_app/presentation/screens/home/home_screen.dart';
import 'package:widgets_app/presentation/screens/medicaments/medicaments_screen.dart';
import 'package:widgets_app/presentation/screens/pills/pills_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 1).getTheme(), //Se cambia el color de la app
      home: const HomeScreen(),
      //Se crea un Map de rutas para poder navegar entre pantallas
      routes: {
        '/medicamentos': (context) => const MedicamentosScreen(),
        '/pastillas': (context) => const PastillasScreen(),
      },
    );
     }
}

