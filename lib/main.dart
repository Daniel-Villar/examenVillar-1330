import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sucursales'),
        ),
        body: SucursalInfo(),
      ),
    );
  }
}

class Sucursal {
  final String idSucursal;
  final String nombre;
  final String numTelefono;
  final String horario;
  final List<String> empleados;
  final String email;

  Sucursal({
    required this.idSucursal,
    required this.nombre,
    required this.numTelefono,
    required this.horario,
    required this.empleados,
    required this.email,
  });
}

class SucursalInfo extends StatelessWidget {
  // Primera sucursal
  final Sucursal sucursal1 = Sucursal(
    idSucursal: '123',
    nombre: 'Sucursal Central',
    numTelefono: '555-1234',
    horario: '9:00 - 18:00',
    empleados: ['Juan', 'Ana', 'Luis'],
    email: 'central@empresa.com',
  );

  // Segunda sucursal
  final Sucursal sucursal2 = Sucursal(
    idSucursal: '456',
    nombre: 'Sucursal Norte',
    numTelefono: '555-5678',
    horario: '8:00 - 17:00',
    empleados: ['Carlos', 'Marta', 'Pedro'],
    email: 'norte@empresa.com',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Primer contenedor expandido (Sucursal 1)
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue[50],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sucursal Central',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('ID: ${sucursal1.idSucursal}'),
                  Text('Nombre: ${sucursal1.nombre}'),
                  Text('Teléfono: ${sucursal1.numTelefono}'),
                  Text('Horario: ${sucursal1.horario}'),
                  Text('Empleados: ${sucursal1.empleados.join(", ")}'),
                  Text('Email: ${sucursal1.email}'),
                ],
              ),
            ),
          ),
          // Separador
          Container(
            height: 1,
            color: Colors.grey[300],
            margin: EdgeInsets.symmetric(horizontal: 16.0),
          ),
          // Segundo contenedor expandido (Sucursal 2)
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16.0),
              padding: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.green[50],
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sucursal Norte',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8),
                  Text('ID: ${sucursal2.idSucursal}'),
                  Text('Nombre: ${sucursal2.nombre}'),
                  Text('Teléfono: ${sucursal2.numTelefono}'),
                  Text('Horario: ${sucursal2.horario}'),
                  Text('Empleados: ${sucursal2.empleados.join(", ")}'),
                  Text('Email: ${sucursal2.email}'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
