import 'package:cococuya_app/profile_screen.dart';
import 'package:flutter/cupertino.dart';
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

class AvatarBlock extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text("¡Hola <USER>!"),
          Column(
            children: [
              //TODO Mantener el avatar fijo al hacer scroll
              GestureDetector(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileScreen()));
                  },
                  child: CircleAvatar(radius: 35, backgroundImage: AssetImage('assets/avatar.png'))),
              Text("2500")
            ],
          ),
        ],
      ),
    );
  }
}
