import 'package:flutter/material.dart';
import 'Detalhe.dart';

class SafeTrip extends StatefulWidget {
  @override
  State createState() => new SafeTripState();
}

class SafeTripState extends State<SafeTrip> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Barra de título
      appBar: new AppBar(
        title: new Text("Safe Trip"),
        backgroundColor: Colors.grey.shade400,
        leadingWidth: 45,
        leading: new Transform.translate(
          offset: new Offset(5, 0),
          child: new Image.asset("iconcarro.png")
          // child: new Icon(Icons.coffee, size: 32, color: Colors.brown)
        ),
      ),

      // Menu de opções
      endDrawer: new Drawer(
        child: new ListView(
          children: [
            // Item 1
            new ListTile(
              title: new Text("Cadastre-se"),
              leading: new Icon(
                Icons.app_registration_outlined,
                color: Colors.red.shade400,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 2
            ListTile(
              title: new Text("Meu Perfil"),
              leading: new Icon(
                Icons.account_circle,
                color: Colors.amber.shade700,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            ),

            // Item 3
            ListTile(
              title: new Text("Informações sobre o App e Site"),
              leading: new Icon(
                Icons.add,
                color: Colors.grey,
                size: 32,
              ),
              trailing: new Icon(Icons.keyboard_arrow_right),
              onTap: () {
                // Aqui vai o código do método...
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),

      // Corpo do App
      body: new SingleChildScrollView(
        child: new Detalhe()
      ),

      // Barra inferior
      // bottomNavigationBar: ,
    );
  }
}