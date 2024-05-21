import 'package:flutter/material.dart';

class Product extends StatelessWidget {
  final String imageUrl, name;
  final double? buyPrice, giftPrice;
  final bool isGift;

  Product({
    required this.imageUrl,
    required this.name,
    this.buyPrice,
    this.giftPrice,
    required this.isGift,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
                content: Column(mainAxisSize: MainAxisSize.min, children: [
              SizedBox(
                height: 8,
              ),
              Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
              Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    textAlign: TextAlign.center,
                    name,
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  isGift
                      ? Text('${giftPrice.toString()}', style: TextStyle(fontSize: 22),)
                      : Text('${buyPrice.toString()}',  style: TextStyle(fontSize: 22),),
                  SizedBox(height: 12),
                ],
              ),
              TextButton(
                onPressed: () {},
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                        onPressed: () {}, child: Text('Añadir al carro'))),
              ),
            ]));
          },
        );
      },
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  double availableWidth = constraints.maxWidth;

                  return Image.asset(
                    imageUrl,
                    width: availableWidth,
                    height: availableWidth,
                    fit: BoxFit.cover,
                  );
                },
              ),
            ),
            SizedBox(height: 8),
            Text(name, style: Theme.of(context).textTheme.labelMedium),
            isGift
                ? Text('${giftPrice.toString()}', style: TextStyle(fontSize: 12),)
                : Text('${buyPrice.toString()}',  style: TextStyle(fontSize: 12),),
          ],
        ),
      ),
    );
  }
}
