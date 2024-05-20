import 'package:cococuya_app/custom_widgets.dart';
import 'package:cococuya_app/product.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  List<Product> productList;

  MapScreen({super.key, required this.productList});

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          AvatarBlock("¿Dónde estamos?"),
          Expanded(
            child: HomeCard(
              label: "Lista de locales",
              imageUrl: 'assets/map_placeholder.jpg',
            )
          ),
        ],
      ),
    );
  }
}