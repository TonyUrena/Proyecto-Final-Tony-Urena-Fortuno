import 'package:cococuya_app/home_screen.dart';
import 'package:cococuya_app/product.dart';
import 'package:cococuya_app/store_screen.dart';
import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = <Widget>[
    const HomeScreen(),
    StoreScreen(productList: [
      Product(
        imageUrl: 'assets/product00.jpg',
        name: 'LABEL',
        buyPrice: 100,
        isGift: false,
      ),
      Product(
        imageUrl: 'assets/product00.jpg',
        name: 'LABEL',
        buyPrice: 100,
        isGift: false,
      ),
      Product(
        imageUrl: 'assets/product00.jpg',
        name: 'LABEL',
        buyPrice: 100,
        isGift: false,
      ),]),
    StoreScreen(productList: []),
    StoreScreen(productList: []),
    StoreScreen(productList: [])
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              'assets/background_gradient01.png',
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child:
              _screens.elementAt(_selectedIndex),
            ),
          ],
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
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
