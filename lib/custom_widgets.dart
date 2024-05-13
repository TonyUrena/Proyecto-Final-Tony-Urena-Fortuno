import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  String label, imageUrl;

  HomeCard({super.key, required this.label, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: Card(
        clipBehavior: Clip.antiAlias,
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
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(label),
            ),
          ],
        ),
      ),
    );
  }
}
