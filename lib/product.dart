import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  String imageUrl, name;
  double? buyPrice, giftPrice;
  bool isGift;

  Product(
      {required this.imageUrl,
      required this.name,
      this.buyPrice,
      this.giftPrice,
      required this.isGift});

  @override
  Widget build(BuildContext context) {
    return Card(clipBehavior: Clip.antiAlias,
        child: Column(
      children: [
        LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            // conseguimos el ancho disponible
            double availableWidth = constraints.maxWidth;

            return Image.asset(
              imageUrl,
              width: availableWidth,
              height: availableWidth,
              fit: BoxFit.cover,
            );
          },
        ),
        SizedBox(height: 8,),
        Text(name,style: Theme.of(context).textTheme.labelMedium),
        isGift ? Text(giftPrice!.toString()) : Text(buyPrice!.toString())
      ],
    ));
  }
}
