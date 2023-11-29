import 'dart:html';

import 'package:flutter/material.dart';

class MenuLateral extends StatelessWidget {
  const MenuLateral({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pagina Principal"),
        backgroundColor: Color.fromARGB(225, 192, 36, 36),
      ),
      body: Center(
        child: Center(child: Text("Contenido del proyecto"),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Mateo Navas"), 
            accountEmail: Text("msp.navas@yavirac.edu.ec"),
            currentAccountPicture: CircleAvatar(
              foregroundImage: AssetImage("images/1.jpg"),
            ),
            otherAccountsPictures: [
              CircleAvatar(
                foregroundImage: AssetImage("images/2.png"),
                ),
                CircleAvatar(
                foregroundImage: AssetImage("images/3.webp"),
              )
            ],
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 255, 255, 255),
            ),
            ),
            Padding(padding: EdgeInsets.all(14.0),
            child: Text("Etiqueta 1"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Primera opción"),
            ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Segunda opción"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Tercera opción"),
            ),
            Padding(padding: EdgeInsets.all(14.0),
            child: Text("Etiqueta 2"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Primera opción"),
            ),
           ListTile(
            leading: Icon(Icons.home),
            title: Text("Segunda opción"),
            ),
            ListTile(
            leading: Icon(Icons.home),
            title: Text("Tercera opción"),
            ),
          ],
        )
      ),
    );
  }
}