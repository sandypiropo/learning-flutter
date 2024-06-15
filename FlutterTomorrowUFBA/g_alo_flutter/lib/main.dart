import 'package:flutter/material.dart';

void main() {
  runApp(buildApp());
}

Widget buildApp() {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: Center(
        child: Text('Teste'),
      ),
    ),
  );
}
