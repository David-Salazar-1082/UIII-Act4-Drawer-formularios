import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details1 extends StatelessWidget {
  Details1({
    Key? key,
    required this.idCliente,
    required this.nombre,
    required this.apellidos,
    required this.edad,
    required this.sexo,
    required this.dni,
    required this.fechanac,
  }) : super(key: key);

  final String idCliente;
  final String nombre;
  final String apellidos;
  final String edad;
  final String sexo;
  final String dni;
  final String fechanac;

  Widget customCard(String title, String subtitle, IconData icon) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: Colors.grey.shade300, width: 1.0),
      ),
      child: ListTile(
        leading: Icon(icon, color: Colors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(subtitle),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Detalles del Cliente"),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(12.0),
        children: [
          customCard("ID Cliente", idCliente, Icons.badge),
          customCard("Nombre", nombre, Icons.person),
          customCard("Apellidos", apellidos, Icons.people),
          customCard("Edad", edad, Icons.wc),
          customCard("Sexo", sexo, Icons.home),
          customCard("DNI", dni, Icons.phone),
          customCard("Fecha Nac", fechanac, Icons.email),
        ],
      ),
    );
  }
}