import 'package:cococuya_app/profile_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String label, imageUrl;
  double? width, height;
  bool isSquare;

  HomeCard(
      {super.key,
      required this.label,
      required this.imageUrl,
      this.isSquare = true,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Card(
        elevation: 8,
        clipBehavior: Clip.antiAlias,
        child: Column(
          children: [
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                // conseguimos el ancho disponible
                if (isSquare) {
                  width = constraints.maxWidth;
                  height = constraints.maxWidth;
                }
                return Image.asset(
                  imageUrl,
                  width: width,
                  height: height,
                  fit: BoxFit.cover,
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                label,
                style: Theme.of(context).textTheme.headlineLarge,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TitleBlock extends StatelessWidget {
  String label;

  TitleBlock(this.label);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      width: double.infinity,
      child: Align(
          alignment: Alignment.bottomLeft,
          child: Text(label, style: Theme.of(context).textTheme.titleLarge)),
    );
  }
}
class DidYouKnowTextBlock extends StatelessWidget {
  String label;

  DidYouKnowTextBlock(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("¿Sabías que...", style: Theme.of(context).textTheme.titleSmall),
          SizedBox(height: 22),
          Text(
            label,
            style: Theme.of(context).textTheme.titleMedium,
            textAlign: TextAlign.right,
          )
        ],
      ),
    );
  }
}
