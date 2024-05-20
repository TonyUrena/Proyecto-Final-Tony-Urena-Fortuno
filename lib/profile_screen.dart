import 'package:cococuya_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Offset _offset = Offset(0, 1); // Comienza fuera de la pantalla a la derecha

  @override
  void initState() {
    super.initState();
    // Iniciar la animación después de que el widget se haya construido
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _offset =
            Offset.zero; // Mover a la posición final (dentro de la pantalla)
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Image.asset(
            'assets/background_gradient01.png',
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Column(
                    children: [
                      Hero(
                          tag: "heroAvatar",
                          child: CircleAvatar(
                              radius: 55,
                              backgroundImage:
                                  AssetImage('assets/avatar.png'))),
                      Hero(
                          tag: "heroPoints",
                          child: Text(
                            "2500",
                            style: Theme.of(context).textTheme.titleLarge,
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Francisco Ramírez Pedregal",
                        style: Theme.of(context).textTheme.headlineMedium,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: AnimatedSlide(
                      curve: Curves.easeInOutQuad,
                      duration: Duration(milliseconds: 500),
                      offset: _offset,
                      child: Card(),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
