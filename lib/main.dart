import 'package:flutter/material.dart';
import 'package:widgets_app/config/theme/app_theme.dart';

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
      theme: AppTheme(selectedColor: 1).getTheme(),
      home:  Scaffold(
        body: Center(
          child: FilledButton(
            child: const Text('Filled Button'),
            onPressed: () {},
          )
        ),
      )
    );
     }
}

