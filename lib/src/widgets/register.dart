
import 'package:flutter/material.dart';
import 'package:menu/src/widgets/input_text.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  late String _email;
  late String _name;
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Center(
      child: Column(
        children: <Widget>[
          InputText(
              hint: "Email Addres",
              label: "Email",
              keyboard: TextInputType.emailAddress,
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _email = data;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'email invalido';
                }
                return null!;
              }),
          const Divider(
            height: 50.0,
          ),
          InputText(
              hint: "Nombre",
              label: "Nombre",
              icon: const Icon(Icons.verified_user),
              onChanged: (data) {
                _name = data;
              },
              validator: (data) {
                if (data!.contains("@")) {
                  return 'Nombre no valido';
                }
                return null!;
              }),
          const Divider(
            height: 50.0,
          ),
          InputText(
              hint: "password",
              label: "password",
              obsecure: false,
              icon: const Icon(Icons.lock_clock),
              onChanged: (data) {
                _password = data;
              },
              validator: (data) {
                if (data?.trim().length == 0) {
                  return 'password invalido';
                }
                return null!;
              }),
          const Divider(
            height: 20.0,
          ),
          SizedBox(
            width: double.infinity,
            height: 60.0,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text(
                "Registrar",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: "FreedokaOne",
                  fontSize: 30.0,
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
