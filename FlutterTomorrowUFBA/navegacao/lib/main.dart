import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Navegação',
    home: Inicio(),
  ));
}

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Início'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Botão Azul
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Detalhe(cor: 'Azul')),
                );
              },
              child: const Text('Azul'),
            ),
            const SizedBox(height: 16), // Espaçamento entre os botões
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Botão Vermelho
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Detalhe(cor: 'Vermelho')),
                );
              },
              child: const Text('Vermelho'),
            ),
          ],
        ),
      ),
    );
  }
}

class Detalhe extends StatelessWidget {
  final String cor;

  const Detalhe({super.key, required this.cor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhe'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Text(
          cor,
          style: TextStyle(
              fontSize: 24, color: cor == 'Azul' ? Colors.blue : Colors.red),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            'Detalhe',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
