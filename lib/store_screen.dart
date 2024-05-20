import 'package:cococuya_app/product.dart';
import 'package:flutter/material.dart';

import 'custom_widgets.dart';

class StoreScreen extends StatefulWidget {
  String label;
  List<Product> productList;

  StoreScreen({super.key, required this.productList, required this.label});

  @override
  State<StatefulWidget> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TitleBlock(widget.label),
            GridView.count(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              childAspectRatio: 0.75,
              crossAxisCount: 2,
              children: widget.productList,
            ),
          ],
        ),
      ),
    );
  }
}
