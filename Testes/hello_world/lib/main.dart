import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hello, World!'),
          backgroundColor: Colors.blue, // Cor de fundo da barra de navegação
        ),
        body: Center(
          child: Text(
            'Hello, World!',
            style: TextStyle(
              fontSize: 24,
              color: Colors.blue, // Cor do texto
              fontWeight: FontWeight.bold, // Negrito
            ),
          ),
        ),
      ),
    );
  }
}
