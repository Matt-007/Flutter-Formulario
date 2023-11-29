import 'package:flutter/material.dart';
import 'package:menu/src/widgets/icon_containers.dart';
import 'package:menu/src/widgets/register.dart';
import 'package:menu/src/widgets/formulario.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool showFormulario = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: <Color>[
                Color.fromARGB(255, 230, 3, 3),
                Color.fromARGB(255, 10, 68, 18),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.symmetric(
              horizontal: 40.0,
              vertical: 200,
            ),
            children: <Widget>[
              IconContainers(url: "images/3.webp"),
              Center(
                child: Text(
                  "Register",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 20.0,
              ),
              Center(
                child: Text(
                  "Feliz Navidad :3",
                  style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                  ),
                ),
              ),
              Divider(
                height: 50.0,
              ),
              RegisterForm(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showFormulario = !showFormulario;
                  });
                },
                child: Text(
                  "Formulario",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 500),
                height: showFormulario ? 300 : 0,
                child: showFormulario ? Formulario() : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
