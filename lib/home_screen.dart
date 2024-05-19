import 'package:cococuya_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

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
          AvatarBlock(),
          HomeCard(
            imageUrl: 'assets/home_cards_img_01.png',
            label: 'Pide ahora tu caja y llévate un regalo exclusivo',
          ),
          HomeCard(
            imageUrl: 'assets/home_cards_img_02.png',
            label: '¿Has visto los premios de esta temporada?',
          ),
          DidYouKnowTextBlock("Cococuyá Black fue elegido anticonceptivo del año 2023 por la revista “Saber Vivir”?"),
          HomeCard(
            imageUrl: 'assets/map_placeholder.jpg',
            label: 'Ya estamos en más de 12.000 establecimientos',
          ),
          HomeCard(
            imageUrl: 'assets/home_cards_img_04.png',
            label: 'Ya es Black Friday en Cococuyá',
          ),
          DidYouKnowTextBlock("Cococuyá Red contiene  cochinilla 100% free range?"),
          HomeCard(
            imageUrl: 'assets/home_cards_img_05.png',
            label: 'Celebra el fin de curso con Cococuyá y acumula puntos extra',
          ),
          HomeCard(
            imageUrl: 'assets/home_cards_img_02.png',
            label: '¿Seguro que has visto los premios de esta temporada?',
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
