import 'package:flutter/material.dart';
import 'package:myapp/Formularios/detalle_empleados.dart';

class Empleados extends StatefulWidget {
  const Empleados ({super.key});

  @override
  State<Empleados> createState() => _EmpleadosState();
}

class _EmpleadosState extends State<Empleados> {
  final _idController = TextEditingController();
  final _nombreController = TextEditingController();
  final _apellidosController = TextEditingController();
  final _sexoController = TextEditingController();
  final _direccionController = TextEditingController();
  final _celularController = TextEditingController();
  final _emailController = TextEditingController();

  @override
  void dispose() {
    _idController.dispose();
    _nombreController.dispose();
    _apellidosController.dispose();
    _sexoController.dispose();
    _direccionController.dispose();
    _celularController.dispose();
    _emailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Formulario de Empleados"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            MyTextField(
              myController: _idController,
              fieldName: "ID_Empleado",
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
              myController: _sexoController,
              fieldName: "Sexo",
              myIcon: Icons.wc,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _direccionController,
              fieldName: "Direccion",
              myIcon: Icons.home,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _celularController,
              fieldName: "Celular",
              myIcon: Icons.phone,
              prefixIconColor: Colors.orange,
            ),
            const SizedBox(height: 20.0),
            MyTextField(
              myController: _emailController,
              fieldName: "Email",
              myIcon: Icons.email,
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
              return Details(
                idEmpleado: _idController.text,
                nombre: _nombreController.text,
                apellidos: _apellidosController.text,
                sexo: _sexoController.text,
                direccion: _direccionController.text,
                celular: _celularController.text,
                email: _emailController.text,
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