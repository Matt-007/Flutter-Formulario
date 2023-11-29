import 'package:flutter/material.dart';

class Formulario extends StatefulWidget {
  @override
  _FormularioState createState() => _FormularioState();
}

class _FormularioState extends State<Formulario> {
  final _formKey = GlobalKey<FormState>();
  String? _cedula;
  String? _nombre;
  String? _telefono;
  int? _edad;
  String? _genero;
  String? _clave;
  String? _estadoCivil;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: Container(
            margin: EdgeInsets.all(16.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Color.fromARGB(253, 255, 255, 255),
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 31, 31, 31).withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 9,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Cédula',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      maxLength: 10,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese su cédula';
                        }
                        if (value.length != 10) {
                          return 'La cédula debe tener 10 caracteres';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _cedula = value;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Nombre',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      maxLength: 20,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese nombres completos';
                        }
                        if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                          return 'El nombre solo debe contener letras';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _nombre = value;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Teléfono',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      maxLength: 10,
                      keyboardType: TextInputType
                          .number, // Asegura que solo se ingresen números
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese un número de teléfono';
                        }
                        if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                          return 'El teléfono debe contener solo números';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _telefono = value;
                      },
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Edad',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      keyboardType: TextInputType
                          .number, // Asegura que solo se ingresen números
                      maxLength: 2,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese su edad';
                        }
                        int edad = int.tryParse(value) ?? -1;
                        if (edad <= 0) {
                          return 'La edad debe ser un número positivo';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _edad = int.tryParse(value!) ?? 0;
                      },
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Género',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              Row(
                                children: [
                                  Radio<String>(
                                    value: 'Masculino',
                                    groupValue: _genero,
                                    onChanged: (value) {
                                      setState(() {
                                        _genero = value;
                                      });
                                    },
                                  ),
                                  Text('Masculino'),
                                  Radio<String>(
                                    value: 'Femenino',
                                    groupValue: _genero,
                                    onChanged: (value) {
                                      setState(() {
                                        _genero = value;
                                      });
                                    },
                                  ),
                                  Text('Femenino'),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 16.0),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Estado Civil',
                                style: TextStyle(fontSize: 16.0),
                              ),
                              DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  filled: true,
                                  fillColor: Colors.grey[100],
                                ),
                                value: _estadoCivil,
                                onChanged: (value) {
                                  setState(() {
                                    _estadoCivil = value;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: 'Soltero/a',
                                    child: Text('Soltero/a'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Casado/a',
                                    child: Text('Casado/a'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Divorciado/a',
                                    child: Text('Divorciado/a'),
                                  ),
                                  DropdownMenuItem(
                                    value: 'Viudo/a',
                                    child: Text('Viudo/a'),
                                  ),
                                ],
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Seleccione su estado civil';
                                  }
                                  return null;
                                },
                                onSaved: (value) {
                                  _estadoCivil = value;
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Clave',
                        border: OutlineInputBorder(),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      maxLength: 15,
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Ingrese su clave';
                        }
                        if (!RegExp(
                                r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,15}$')
                            .hasMatch(value)) {
                          return 'La clave debe contener al menos una mayúscula, una minúscula, un número, un caracter especial (@\$!%*?&) y tener una longitud de 8 a 15 caracteres.';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        _clave = value;
                      },
                    ),
                    SizedBox(height: 16.0),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();

                                print('Cédula: $_cedula');
                                print('Nombre: $_nombre');
                                print('Teléfono: $_telefono');
                                print('Edad: $_edad');
                                print('Género: $_genero');
                                print('Estado Civil: $_estadoCivil');
                                print('Clave: $_clave');

                                print('Formulario Completado');
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 42, 150, 30),
                              textStyle: TextStyle(fontSize: 18),
                            ),
                            child: Text('Guardar'),
                          ),
                          SizedBox(width: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.of(context)
                                  .pop(); // Cierra el formulario
                            },
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 42, 150, 30),
                              textStyle: TextStyle(fontSize: 18),
                            ),
                            child: Text('Salir'),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
