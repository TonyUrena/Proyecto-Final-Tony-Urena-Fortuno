import 'package:cococuya_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function(int) selectTab;

  const HomeScreen({super.key, required this.selectTab});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AvatarBlock("¡Hola Francisco!"),
          GestureDetector(
            onTap: () {
              widget.selectTab(2);
            },
            child: HomeCard(
              imageUrl: 'assets/home_cards_img_01.png',
              label: 'Pide ahora tu caja y llévate un regalo exclusivo',
              isSquare: false,
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.selectTab(1);
            },
            child: HomeCard(
              imageUrl: 'assets/home_cards_img_02.png',
              label: '¿Has visto los premios de esta temporada?',
            ),
          ),
          DidYouKnowTextBlock("Cococuyá Black fue elegido anticonceptivo del año 2023 por la revista “Saber Vivir”?"),
          GestureDetector(
            onTap: () {
              widget.selectTab(4);
            },
            child: HomeCard(
              imageUrl: 'assets/map_placeholder.jpg',
              label: 'Ya estamos en más de 12.000 establecimientos',
              isSquare: false,
              height: 250,
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.selectTab(3);
            },
            child: HomeCard(
              imageUrl: 'assets/home_cards_img_04.png',
              label: 'Ya es Black Friday en Cococuyá',
            ),
          ),
          DidYouKnowTextBlock("Cococuyá Red contiene  cochinilla 100% free range?"),
          GestureDetector(
            onTap: () {
              widget.selectTab(2);
            },
            child: HomeCard(
              imageUrl: 'assets/home_cards_img_05.png',
              label: 'Celebra el fin de curso con Cococuyá y acumula puntos extra',
              isSquare: false,
            ),
          ),
          GestureDetector(
            onTap: () {
              widget.selectTab(1);
            },
            child: HomeCard(
              imageUrl: 'assets/home_cards_img_02.png',
              label: '¿Seguro que has visto los premios de esta temporada?',
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                children: [
                  const Text(
                    "Parece que has llegado al final",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "¡Toma 100 puntos por la cara!",
                    style: TextStyle(color: Colors.white),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.limeAccent, foregroundColor: Colors.deepOrange, shape: CircleBorder(), padding: EdgeInsets.all(10)),
                      child: const Icon(
                        Icons.attach_money_rounded,
                        size: 40,
                      ))
                ],
              ))
        ],
      ),
    );
  }
}
