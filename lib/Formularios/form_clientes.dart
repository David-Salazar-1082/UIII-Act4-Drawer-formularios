import 'package:flutter/material.dart';
import 'package:myapp/Formularios/detalle._clientes.dart';

class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

class _ClientesState extends State<Clientes> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _edadController = TextEditingController();
  final _sexoController = TextEditingController();
  final _dniController = TextEditingController();
  final _fechanacController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _apellidosController.dispose();
    _edadController.dispose();
    _sexoController.dispose();
    _dniController.dispose();
    _fechanacController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Formulario de Clientes"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID_Cliente",
            myIcon: Icons.badge,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 10.0),
            MyTextField(
              myController: _nombreController,
              fieldName: "Nombres",
              myIcon: Icons.person,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _apellidosController,
              fieldName: "Apellidos",
              myIcon: Icons.people,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _edadController,
              fieldName: "Edad",
              myIcon: Icons.cake,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _sexoController,
              fieldName: "Sexo",
              myIcon: Icons.wc,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _dniController,
              fieldName: "DNI",
              myIcon: Icons.credit_card,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _fechanacController,
              fieldName: "Fecha Nac",
              myIcon: Icons.calendar_today,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            myBtn(context),
          ],
        ),
      ),
    );
  }

  OutlinedButton myBtn(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(minimumSize: const Size(200, 50)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return Details1(
                idCliente: _idController.text,
                nombre: _nombreController.text,
                apellidos: _apellidosController.text,
                edad: _edadController.text,
                sexo: _sexoController.text,
                dni: _dniController.text,
                fechanac: _fechanacController.text,
              );
            },
          ),
        );
      },
      child: Text(
        "Enviar Formulario".toUpperCase(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  MyTextField({
    Key? key,
    required this.fieldName,
    required this.myController,
    this.myIcon = Icons.verified_user_outlined,
    this.prefixIconColor = Colors.blueAccent,
  });

  final TextEditingController myController;
  final String fieldName;
  final IconData myIcon;
  final Color prefixIconColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      decoration: InputDecoration(
        labelText: fieldName,
        prefixIcon: Icon(myIcon, color: prefixIconColor),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.orange),
        ),
        labelStyle: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
