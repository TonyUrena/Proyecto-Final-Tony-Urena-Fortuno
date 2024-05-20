import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'store_screen.dart';
import 'map_screen.dart';
import 'product.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  late final PageController _pageController;
  int _selectedIndex = 0;

  late final List<Widget> _screens;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _selectedIndex);
    _screens = <Widget>[
      HomeScreen(selectTab: _onItemTapped),
      StoreScreen(
          label:"Tus premios:",
          productList: [
            Product(
              imageUrl: 'assets/product00.jpg',
              name: 'Miniatura WH40k',
              buyPrice: 100,
              isGift: false,
            ),
            Product(
              imageUrl: 'assets/product01.jpg',
              name: 'Pato de goma',
              buyPrice: 100,
              isGift: false,
            ),
            Product(
              imageUrl: 'assets/product02.jpg',
              name: 'Nevera portátil',
              buyPrice: 100,
              isGift: false,
            ),
            Product(
              imageUrl: 'assets/product03.jpg',
              name: 'Funda isotérmica',
              buyPrice: 100,
              isGift: false,
            ),
            Product(
              imageUrl: 'assets/product04.jpg',
              name: 'Botellas limitadas',
              buyPrice: 100,
              isGift: false,
            ),
            Product(
              imageUrl: 'assets/product05.jpg',
              name: 'Lata limitadas',
              buyPrice: 100,
              isGift: false,
            ),
          ]),
      StoreScreen(label:"Tu tienda:", productList: [
        Product(
          imageUrl: 'assets/product_green.png',
          name: 'Cococuyá Green',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product_red.png',
          name: 'Cococuyá Red',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product_black.png',
          name: 'Cococuyá Black',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product04.jpg',
          name: 'Botellas limitadas',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product05.jpg',
          name: 'Lata limitadas',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product03.jpg',
          name: 'Funda isotérmica',
          buyPrice: 100,
          isGift: false,
        ),
      ]),
      StoreScreen(label:"Tus ofertas:", productList: [Product(
        imageUrl: 'assets/product_green.png',
        name: 'Cococuyá Green',
        buyPrice: 100,
        isGift: false,
      ),
        Product(
          imageUrl: 'assets/product_red.png',
          name: 'Cococuyá Red',
          buyPrice: 100,
          isGift: false,
        ),
        Product(
          imageUrl: 'assets/product_black.png',
          name: 'Cococuyá Black',
          buyPrice: 100,
          isGift: false,
        )
      ]),
      MapScreen(productList: [])
    ];
  }

  void _onItemTapped(int index) {
    _pageController.animateToPage(
      index,
      duration: Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
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
        PageView(
          controller: _pageController,
          onPageChanged: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          children: _screens,
        )]),),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded), label: 'Inicio', activeIcon: Icon(Icons.home_rounded, color: Colors.pinkAccent,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard_rounded), label: 'Premios', activeIcon: Icon(Icons.card_giftcard_rounded, color: Colors.deepOrange,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_rounded), label: 'Tienda', activeIcon: Icon(Icons.shopping_cart_rounded, color: Colors.cyan,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.discount_rounded), label: 'Ofertas', activeIcon: Icon(Icons.discount_rounded, color: Colors.green,)),
          BottomNavigationBarItem(
              icon: Icon(Icons.location_pin), label: 'Mapa', activeIcon: Icon(Icons.location_pin, color: Colors.red,)),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
