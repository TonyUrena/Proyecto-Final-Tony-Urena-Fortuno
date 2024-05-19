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
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("¡Hola <USER>!"),
            CircleAvatar(radius: 35),
          ],
        ),
        Expanded(
          child: HomeCard(
            label: "Lista de locales",
            imageUrl: 'assets/map_placeholder.jpg',
          )
        ),
      ],
    );
  }
}