import 'package:cococuya_app/menu_screen.dart';
import 'package:cococuya_app/login_screen.dart';
import 'package:cococuya_app/profile_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(colorScheme: ColorScheme.fromSeed(seedColor: Colors.purpleAccent)),
      //Ruta inicial de la aplicación
      initialRoute: '/',
      routes: {
        //Definición de las rutas de las pantallas
        '/': (context) => const LoginScreen(),
        "/home": (context) => const MenuScreen(),
        "/profile": (context) => const ProfileScreen(),
      },
    );
  }
}
