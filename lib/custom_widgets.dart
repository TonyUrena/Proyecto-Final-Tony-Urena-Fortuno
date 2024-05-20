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

class AvatarBlock extends StatelessWidget {
  String label;

  AvatarBlock(this.label);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(label, style: Theme.of(context).textTheme.titleLarge),
          Column(
            children: [
              //TODO Mantener el avatar fijo al hacer scroll
              GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ProfileScreen()));
                  },
                  child: const Hero(
                      tag: "heroAvatar",
                      child: CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('assets/avatar.png')))),
              Hero(
                  tag: "heroPoints",
                  child: Text("2500",
                      style: Theme.of(context).textTheme.headlineSmall,
                      textAlign: TextAlign.center))
            ],
          ),
        ],
      ),
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
