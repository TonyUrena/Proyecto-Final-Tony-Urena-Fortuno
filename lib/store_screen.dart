import 'package:cococuya_app/product.dart';
import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class StoreScreen extends StatefulWidget {
  List<Product> productList;

  StoreScreen({super.key, required this.productList});

  @override
  State<StatefulWidget> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AvatarBlock(),
        Expanded(
          child: GridView.count(
            childAspectRatio: 0.75,
            crossAxisCount: 2,
            children: widget.productList,
          ),
        ),
      ],
    );
  }
}