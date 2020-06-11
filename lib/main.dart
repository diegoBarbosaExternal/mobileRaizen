import 'package:flutter/material.dart';
import 'package:mobilerisen/RouteGenerator.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/Detalhes1.dart';
import 'package:mobilerisen/telas/Home.dart';
import 'package:mobilerisen/telas/Login.dart';
import 'package:mobilerisen/telas/MinhasInspecoes.dart';
import 'globals.dart' as globals;

void main() {
  globals.telaSelecionada = 0;

  runApp(MaterialApp(
    theme: ThemeData(
      primaryColor: Colors.white,
      accentColor: COR_RAIZEN_ROXO,
    ),
    debugShowCheckedModeBanner: false,
    initialRoute: "/",
    onGenerateRoute: RouteGenerator.generateRoute,
    home: Login(),

  ));
}