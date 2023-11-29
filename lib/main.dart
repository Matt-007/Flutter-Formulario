import 'package:flutter/material.dart';
import 'package:menu/src/page/home_page.dart';
import 'package:menu/src/page/sing_in.dart';
import 'package:menu/src/page/sing_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      //Crear rutas de navegacion
      theme: ThemeData(
          primaryColor: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      initialRoute: "Home",
      routes: <String, WidgetBuilder>{
        "Home": (BuildContext context) => const HomePage(),
        "Sing_In": (BuildContext context) => const SignIn(),
        "Sing_up": (BuildContext context) => const SignUp(),
      },
    );
  }
}
