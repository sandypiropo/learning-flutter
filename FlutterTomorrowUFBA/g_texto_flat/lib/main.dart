import 'package:flutter/material.dart';

void main() {
  runApp(buildApp());
}

Widget buildApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.yellow,
          child: Text('Teste'),
        ),
      ),
    ),
  );
}
