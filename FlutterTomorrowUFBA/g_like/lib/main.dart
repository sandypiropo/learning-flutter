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
          padding: EdgeInsets.all(16),
          color: Colors.blueGrey.shade100,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 20,
              ),
              SizedBox(width: 8),
              Text(
                'Like',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
