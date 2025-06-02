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
              child: CircleAvatar(
            radius: 120.0,
            backgroundImage: NetworkImage(
                "https://raw.githubusercontent.com/David-Salazar-1082/Imagenes_Menlectronicos/refs/heads/main/Imagen_33.png"),
          ),
                ),
    ),
    ),
  InkWell(
              onTap: (){},
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/home");},
                leading: Icon(Icons.home, color: Colors.red),
                title: Text("Pagina Inicio"),
              ),
            ),
            InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/empleados");},
                leading: Icon(Icons.person, color: Colors.green),
                title: Text("Empleados"),
              ),
            ),
   InkWell(
              onTap: null,
              child: ListTile(
                onTap: (){Navigator.popAndPushNamed(context, "/clientes");},
                leading: Icon(Icons.person, color: Colors.black),
                title: Text("Clientes"),
              ),
            ),
  ],
  ),
  ),
  );  
  }
}