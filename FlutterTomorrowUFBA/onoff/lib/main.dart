import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
        title: Text('Botão On/Off'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: BotaoOnOff(),
        ),
      ),
    );
  }
}

class BotaoOnOff extends StatefulWidget {
  @override
  _BotaoOnOffState createState() => _BotaoOnOffState();
}

class _BotaoOnOffState extends State<BotaoOnOff> {
  bool isOn = false;

  void _toggleButton() {
    setState(() {
      isOn = !isOn;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: _toggleButton,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.blue, // Cor do botão
      ),
      child: Text(
        isOn ? 'On' : 'Off',
        style: TextStyle(
          color: Colors.white, // Cor do texto
          fontSize: 20, // Tamanho do texto
        ),
      ),
    );
  }
}
