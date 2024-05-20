import 'package:cococuya_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  Offset _offset = Offset(0, 1);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        _offset = Offset.zero;
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
                            backgroundImage: AssetImage('assets/avatar.png'),
                          ),
                        ),
                        Hero(
                          tag: "heroPoints",
                          child: Text(
                            "2500",
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                        ),
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
                        child: Card(
                          child: ListView(
                            children: <Widget>[
                              ListTile(
                                leading: Icon(Icons.person),
                                title: Text('Cuenta'),
                                subtitle: Text('Administra la configuración de tu cuenta'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.notifications),
                                title: Text('Notificaciones'),
                                subtitle: Text('Administra la configuración de notificaciones'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.lock),
                                title: Text('Privacidad'),
                                subtitle: Text('Administra la configuración de privacidad'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.language),
                                title: Text('Idioma'),
                                subtitle: Text('Administra la configuración de idioma'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.security),
                                title: Text('Seguridad'),
                                subtitle: Text('Administra la configuración de seguridad'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.palette),
                                title: Text('Tema'),
                                subtitle: Text('Administra la configuración del tema'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.accessibility),
                                title: Text('Accesibilidad'),
                                subtitle: Text('Administra la configuración de accesibilidad'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.update),
                                title: Text('Actualizaciones'),
                                subtitle: Text('Administra la configuración de actualizaciones'),
                                onTap: () {},
                              ),
                              ListTile(
                                leading: Icon(Icons.info),
                                title: Text('Acerca de'),
                                subtitle: Text('Acerca de la aplicación'),
                                onTap: () {},
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
