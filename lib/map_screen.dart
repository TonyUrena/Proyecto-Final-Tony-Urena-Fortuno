import 'package:cococuya_app/custom_widgets.dart';
import 'package:cococuya_app/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  List<Product> productList;

  MapScreen({super.key, required this.productList});

  @override
  State<StatefulWidget> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          TitleBlock("Dónde encontrarnos"),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Card(
                elevation: 8,
                clipBehavior: Clip.antiAlias,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Image.asset(
                          "assets/map_placeholder.jpg",
                          width: constraints.maxWidth,
                          height: constraints.maxWidth,
                          fit: BoxFit.cover,
                        );
                      },
                    ),
                    Expanded(
                      child: ListView(
                        children: <Widget>[
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Bar Paquito'),
                            subtitle: Text('C/ Mayor 32'),
                            trailing: Text("200 m.", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Bar Juanito'),
                            subtitle: Text('Av. Libertad 15'),
                            trailing: Text("300 m.", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Cafetería Carmen'),
                            subtitle: Text('Pl. España 10'),
                            trailing: Text("500 m.", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Restaurante Pepe'),
                            subtitle: Text('C/ Gran Vía 5'),
                            trailing: Text("700 m.", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Pizzería Mario'),
                            subtitle: Text('C/ Sol 20'),
                            trailing: Text("1 km", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                          ListTile(
                            leading: Icon(Icons.location_pin, color: Colors.red,),
                            title: Text('Bar Marta'),
                            subtitle: Text('Av. de la Constitución 8'),
                            trailing: Text("1.2 km", style: Theme.of(context).textTheme.bodyText1),
                            onTap: () {},
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
