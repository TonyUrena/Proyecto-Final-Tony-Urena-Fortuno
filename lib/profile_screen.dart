import 'package:cococuya_app/custom_widgets.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<StatefulWidget> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
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
                      Hero(tag: "heroAvatar", child: CircleAvatar(radius: 55, backgroundImage: AssetImage('assets/avatar.png'))),
                      Hero(tag: "heroPoints", child: Text("2500", style: Theme.of(context).textTheme.titleLarge,)),
                      SizedBox(height: 15,),
                      Text("Francisco Ramírez Pedregal", style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
                    ],
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: double.infinity,
                    child: Card(
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
