import 'package:flutter/material.dart';

import 'Login/pageOfLogin.dart';
import 'Register/pageOfRegister.dart';
import 'Vericification/pageOfVericification.dart';
import 'Vericification/textFieldForVericification.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Example Two',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light().copyWith(

        hintColor: Colors.grey,

        appBarTheme:  AppBarTheme(
          centerTitle: true,
          backgroundColor: Colors.transparent, 
          elevation: 0,
          toolbarHeight: 80
        ),
      ),
      home: pageOfRegister(),
    );
  }
}

