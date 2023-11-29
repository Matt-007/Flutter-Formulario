import 'package:flutter/material.dart';
import 'package:menu/src/page/sing_in.dart';
import 'package:menu/src/page/sing_up.dart';
import 'package:menu/src/widgets/icon_containers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: <Color>[
            Color.fromARGB(255, 230, 3, 3),
            Color.fromARGB(255, 10, 68, 18),
          ], begin: Alignment.topLeft)),
          child: ListView(
            padding:
                const EdgeInsets.symmetric(horizontal: 40.0, vertical: 200.0),
            children: <Widget>[
              //aqui ubicaremos el url de una imagen
              const IconContainers(url: "images/1.jpg"),
              const Text(
                "Navidad :D ",
                style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              const Divider(
                height: 20.0,
              ),
              const Text(
                "Feliz Navidad",
                style: TextStyle(
                    fontFamily: "BlackOpsOne",
                    fontSize: 30.0,
                    color: Colors.white),
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    final route =
                        MaterialPageRoute(builder: (context) => const SignIn());
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "Sing In",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              ),
              const Divider(
                height: 20.0,
              ),
              SizedBox(
                width: double.infinity,
                height: 60.0,
                child: ElevatedButton(
                  onPressed: () {
                    // ignore: unused_local_variable
                    final route = MaterialPageRoute(
                        builder: ((context) => const SignUp()));
                    Navigator.push(context, route);
                  },
                  child: const Text(
                    "Sing Up",
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: "FredokaOne",
                        fontSize: 30.0),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
