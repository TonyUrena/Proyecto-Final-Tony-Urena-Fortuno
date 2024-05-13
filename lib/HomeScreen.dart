import 'package:cococuya_app/CustomWidgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                HomeCard(
                  imageUrl: 'assets/background_gradient01.png',
                  label: 'Cosas',
                ),
                HomeCard(
                  imageUrl: 'assets/background_gradient01.png',
                  label: 'Cosas',
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Inicio'),
            BottomNavigationBarItem(
                icon: Icon(Icons.card_giftcard_rounded), label: 'Premios'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_rounded), label: 'Tienda'),
            BottomNavigationBarItem(
                icon: Icon(Icons.discount_rounded), label: 'Ofertas'),
            BottomNavigationBarItem(
                icon: Icon(Icons.location_pin), label: 'Mapa'),
          ]),
    );
  }
}
