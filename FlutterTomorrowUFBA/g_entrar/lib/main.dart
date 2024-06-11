import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(
                    16), // Espaçamento de 16 pixels em todos os lados
                color: Colors.yellow, // Cor de fundo amarelo
                child: Text(
                  'Teste',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              SizedBox(width: 16), // Espaçamento entre os textos
              Container(
                padding: EdgeInsets.all(
                    16), // Espaçamento de 16 pixels em todos os lados
                color: Colors.green, // Cor de fundo verde
                child: Text(
                  'Cadastre-se',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
