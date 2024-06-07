import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class FotoPage extends StatelessWidget {
  final List<String> fotos = [
    'assets/WhatsApp Image 2024-06-07 at 01.30.54 (1).jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.54 (2).jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.54 (3).jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.55.jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.55 (1).jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.55 (2).jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.54.jpeg',
    'assets/WhatsApp Image 2024-06-07 at 01.30.56.jpeg',
    // Adicione mais imagens conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        centerTitle: true,
        title: Text('Galeria do amor' ,style: TextStyle(fontSize: 40, fontFamily: 'Parisienne'),),
      ),
      body: Center(
          child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Theme.of(context).colorScheme.secondary, // Fundo rosa claro
        child: CarouselSlider(
          options: CarouselOptions(
            height: 600,
            // Altura do carrossel
            enlargeCenterPage: true,
            // Amplia a imagem do centro
            autoPlay: true,
            // Inicia a reprodução automática
            aspectRatio: 16 / 9,
            // Proporção da imagem
            autoPlayCurve: Curves.fastOutSlowIn,
            // Curva de animação
            enableInfiniteScroll: true,
            // Permite rolar infinitamente
            autoPlayInterval: Duration(seconds: 3),
            // Intervalo entre as imagens
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            // Duração da animação
            viewportFraction: 0.8, // Fração da tela ocupada pela imagem
          ),
          items: fotos.map((foto) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                  ),
                  child: Image.asset(
                    foto,
                    fit: BoxFit.cover,
                  ),
                );
              },
            );
          }).toList(),
        ),
      )),
    );
  }
}
