
import 'package:flutter/material.dart';
import 'package:widgets_app/config/menu/menu_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const String routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Selección medicamentos'),
        //centerTitle: true,
      ),
      body: const _HomeView(), //Container(), se hace un Extract Widget: Se cambia el body por el _HomeView que es un widget de la vista de nuestro Home creado mas abajo
    );
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({
    super.key,
  });
  /*
  
  */

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
        itemCount: appMenuItems.length, //Indica el tamaño de los elementos de la lista MenuItem, sin el no se veria nada
        itemBuilder: (context, index) { //Se crea un itemBuilder que sirve para crear los elementos de la lista
        final menuItem = appMenuItems[index]; //Introducimos en una variable el elemento de la lista MenuItem
        
        //return ListTile(title: Text(menuItem.title), subtitle: Text(menuItem.subtitle),); //Se devuelve el titulo y el subtitulo del elemento de la lista MenuItem
        //Convertimos esto:
        /*
        return ListTile(
          leading: Icon(menuItem.icon),
          title: Text(menuItem.title),
          subtitle: Text(menuItem.subtitle),
        ); 
        */
        //En esto: que es un extract widget de ListTile por el _CustomListTile que es un widget creado mas abajo y mas completo
        return _CustomListTile(menuItem: menuItem); //Se hace un extract widget de ListTile por el _CustomListTile que es un widget creado mas abajo
      },
    );

  }
}

class _CustomListTile extends StatelessWidget {
  const _CustomListTile({
   
    required this.menuItem,
  });

  final MenuItem menuItem;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(menuItem.icon),
      title: Text(menuItem.title),
      subtitle: Text(menuItem.subtitle),
    );
  }
}