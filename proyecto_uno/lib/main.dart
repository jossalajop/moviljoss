import 'package:flutter/material.dart';
import 'package:bootstrap_icons/bootstrap_icons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Aplicación Bootstrap Joselyn',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicación usando Bootstrap'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '¡Bienvenido!',
              style: TextStyle(fontSize: 29),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Acción del botón
              },
              icon: Icon(BootstrapIcons.camera),
              label: Text('Añadir Foto'),
            ),
            SizedBox(height: 10),
            OutlinedButton.icon(
              onPressed: () {
                // Acción del botón
              },
              icon: Icon(FontAwesomeIcons.envelope),
              label: Text('Correo electronico'),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.facebook),
            label: 'Facebook',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.instagram),
            label: 'Instagram',
          ),
          BottomNavigationBarItem(
            icon: Icon(BootstrapIcons.phone),
            label: 'Contactanos',
          ),
        ],
      ),
    );
  }
}