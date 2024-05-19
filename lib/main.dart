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
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
          titleMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: Colors.white, height: 1.3),
          titleSmall: TextStyle(fontSize: 23, fontWeight: FontWeight.w300, color: Colors.white),
          headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.pink.shade400),
          headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white)),
      ),
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
