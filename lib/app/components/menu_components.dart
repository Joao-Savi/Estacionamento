import 'package:estacionamento/app/screens/create_screen.dart';
import 'package:estacionamento/app/screens/detail_screen.dart';
import 'package:estacionamento/app/screens/edit_screen.dart';
import 'package:estacionamento/app/screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';

Widget MenuComponent(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Menu'),
        ),
        ListTile(
          title: const Text('HOME'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MyHomePage(title: 'HOME')));
          },
        ),
        ListTile(
          title: const Text(' detalhes'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(title: 'detalhes')));
          },
        ),
        ListTile(
          title: const Text('Editar'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => EditScreen(title: 'Editar')));
          },
        ),
        ListTile(
          title: const Text('Registrar'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => RegisterScreen(title: 'Registrar')));
          },
        ),
        ListTile(
          title: const Text('Criar'),
          leading: Icon(Icons.ice_skating),
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CreatePage(title: 'Criar')));
          },
        )
      ],
    ),
  );
}
