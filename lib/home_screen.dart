import 'package:flutter/material.dart';
import 'package:cococuya_app/custom_widgets.dart';

class HomeScreen extends StatelessWidget {
  final Function(int) selectTab;

  const HomeScreen({Key? key, required this.selectTab}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleBlock("¡Hola Francisco!"),
            GestureDetector(
              onTap: () {
                selectTab(2);
              },
              child: HomeCard(
                imageUrl: 'assets/home_cards_img_01.jpg',
                label: 'Pide ahora tu caja y llévate un regalo exclusivo',
                isSquare: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                selectTab(1);
              },
              child: HomeCard(
                imageUrl: 'assets/home_cards_img_02.jpg',
                label: '¿Has visto los premios de esta temporada?',
              ),
            ),
            DidYouKnowTextBlock("Cococuyá Black fue elegido anticonceptivo del año 2023 por la revista “Saber Vivir”?"),
            GestureDetector(
              onTap: () {
                selectTab(4);
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
                selectTab(3);
              },
              child: HomeCard(
                imageUrl: 'assets/home_cards_img_04.jpg',
                label: 'Ya es Black Friday en Cococuyá',
              ),
            ),
            DidYouKnowTextBlock("Cococuyá Red contiene  cochinilla 100% free range?"),
            GestureDetector(
              onTap: () {
                selectTab(2);
              },
              child: HomeCard(
                imageUrl: 'assets/home_cards_img_05.jpg',
                label: 'Celebra el fin de curso con Cococuyá y acumula puntos extra',
                isSquare: false,
              ),
            ),
            GestureDetector(
              onTap: () {
                selectTab(1);
              },
              child: HomeCard(
                imageUrl: 'assets/home_cards_img_02.jpg',
                label: '¿Seguro que has visto los premios de esta temporada?',
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 80.0),
              child: Column(
                children: [
                  const Text(
                    "Parece que has llegado al final...",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Text(
                    "¡Toma 100 puntos por la cara!",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.limeAccent,
                      foregroundColor: Colors.deepOrange,
                      shape: const CircleBorder(),
                      padding: const EdgeInsets.all(10),
                    ),
                    child: const Icon(
                      Icons.attach_money_rounded,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
