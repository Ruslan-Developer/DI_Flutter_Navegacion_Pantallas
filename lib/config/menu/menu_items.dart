

import 'package:flutter/material.dart';

class MenuItem{
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title, 
    required this.subtitle, 
    required this.link, 
    required this.icon
    });
}

const appMenuItems = <MenuItem>[

    MenuItem( //Se crea una lista de objetos de tipo MenuItem que sirve para crear el menu de la app
    title: 'Medicamentos', 
    subtitle: 'varios tipos de botones', 
    link: '/medicamentos', 
    icon: Icons.medical_information_outlined
    ),

    MenuItem(
    title: 'Pastillas', 
    subtitle: 'contenedor estilizado', 
    link: '/pastillas', 
    icon: Icons.medication
    ),
];