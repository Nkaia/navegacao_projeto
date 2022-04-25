import 'package:flutter/material.dart';
import 'package:testando_navegacao/app_rotas/navegacao.dart';

import 'tela/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
     // title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      
      routes: {
        "/":(context) =>  HomeScreen(),
        "/outra":(context) => OutraPage()
      },
      
    );
  }
}

