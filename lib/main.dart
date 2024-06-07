import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'fotos.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contador do amor',
      theme: ThemeData(
        primaryColor: Color(0xFFE91E63), // Vermelho Rosado
        scaffoldBackgroundColor: Color(0xFFFFFFFF), // Branco
        colorScheme: ColorScheme.fromSwatch()
            .copyWith(secondary: Color(0xFFF8BBD0)), // Rosa Claro
        textTheme: Theme
            .of(context)
            .textTheme
            .apply(
          bodyColor: Color(0xFF757575), // Cor do texto padrão
        ),
      ),
      home: CountdownPage(),
    );
  }
}

class CountdownPage extends StatefulWidget {
  @override
  _CountdownPageState createState() => _CountdownPageState();
}

class _CountdownPageState extends State<CountdownPage> {
  DateTime targetDate = DateTime(2024, 8, 29, 0, 0, 1); // Data alvo
  Duration remainingTime = Duration();
  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        remainingTime = targetDate.difference(DateTime.now());
        if (remainingTime.isNegative) {
          timer.cancel();
        }
      });
    });
  }

  @override
  void dispose() {
    timer.cancel();
    super.dispose();
  }

  String formatDuration(Duration duration) {
    int days = duration.inDays;
    int hours = duration.inHours
        .remainder(24); // Modificado para obter as horas corretas
    int minutes = duration.inMinutes
        .remainder(60); // Modificado para obter os minutos corretos
    int seconds = duration.inSeconds
        .remainder(60); // Modificado para obter os segundos corretos

    return '$days dias, $hours horas, $minutes minutos, $seconds segundos';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .secondary,
        centerTitle: true,
        title: const Text(
          'Tempo para nosso aniversario',
          style: TextStyle(fontSize: 35, fontFamily: 'Parisienne'),
        ),
      ),
      body: Center(
        child: Container(
          color: Theme
              .of(context)
              .colorScheme
              .secondary, // Fundo rosa claro
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.heart,
                    size: 400,
                    color: Color(0xFFD32F2F), // Vermelho Escuro
                  ),
                  remainingTime.isNegative
                      ? const Text(
                    'Data alvo atingida!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                    ),
                  )
                      : SizedBox(
                    width: 250, // Defina a largura desejada
                    child: Text(
                      formatDuration(remainingTime),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 24,
                          color: Color(0xFF424242),
                          fontFamily: 'Parisienne'),
                      maxLines: 2,
                      overflow: TextOverflow
                          .ellipsis, // Ajuste o comportamento do texto se exceder a largura
                    ),
                  ),
                ],
              ),
              Container(
                  child: Image.asset('assets/gif_amor.gif'),
                  // Inclua o caminho do seu arquivo GIF aqu
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFD32F2F),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FotoPage()),
                  );
                },
                child: Text(
                  'Alguns momentos juntos',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontFamily: 'Parisienne'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
