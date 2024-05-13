import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Image.asset(
          'assets/background_gradient01.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Image.asset(
          'assets/bottle_black.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Image.asset(
          'assets/bottle_red.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Image.asset(
          'assets/bottle_green.png',
          fit: BoxFit.cover,
          height: double.infinity,
          width: double.infinity,
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: SizedBox(
              height: 170,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(

                    //TODO mostrar dialogo de login y registro.

                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text("Inicia Sesión")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text("Regístrate")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/home');
                      },
                      child: const Text("Sign in with Google")),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
