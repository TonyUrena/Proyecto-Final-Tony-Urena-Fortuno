import 'package:cococuya_app/menu_screen.dart';
import 'package:cococuya_app/login_screen.dart';
import 'package:cococuya_app/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Color.fromRGBO(199, 19, 78, 1.0), // Cambia este color al que desees
    ));

    return MaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
          titleMedium: TextStyle(fontSize: 26, fontWeight: FontWeight.w900, color: Colors.white, height: 1.3),
          titleSmall: TextStyle(fontSize: 23, fontWeight: FontWeight.w300, color: Colors.white),
          headlineLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w900, color: Colors.pink.shade400),
          headlineMedium: TextStyle(fontSize: 30, fontWeight: FontWeight.w400, color: Colors.white),
          headlineSmall: TextStyle(fontSize: 18, fontWeight: FontWeight.w800, color: Colors.white),
          labelSmall: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Colors.pink.shade400),
          labelMedium: TextStyle(fontSize: 13, color: Colors.pink.shade400)),
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
