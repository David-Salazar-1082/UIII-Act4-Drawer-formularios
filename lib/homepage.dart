import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        title: Text("Formulario Tablas"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: <Widget>[
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
          InkWell(
            onTap: null,
            child: IconButton(
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ), onPressed: () {  },
            ),
          ),
        ],
      ),
  
  drawer: Drawer(
  child: ListView(
  children: <Widget>[
  UserAccountsDrawerHeader(
    decoration: BoxDecoration(color: Colors.orange),
    accountName: Text("David Salazar 1082"),
    accountEmail: Text("a.22308051281082@cbtis128.edu.mx"),
    currentAccountPicture: GestureDetector(
    child: CircleAvatar(
                  child: Text(
                    "AM",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  ),
                  backgroundColor: Colors.green,
                ),
    ),
    ),
  ],
  ),
  ),
  );  
  }
}