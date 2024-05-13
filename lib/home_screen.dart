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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("¡Hola <USER>!"),
              CircleAvatar(radius: 35),
            ],
          ),
          HomeCard(
            imageUrl: 'assets/product00.jpg',
            label: 'LABEL',
          ),
          HomeCard(
            imageUrl: 'assets/product00.jpg',
            label: 'LABEL',
          ),
          HomeCard(
            imageUrl: 'assets/product00.jpg',
            label: 'LABEL',
          ),
        ],
      ),
    );
  }
}
