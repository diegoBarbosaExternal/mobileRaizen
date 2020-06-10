import 'package:flutter/material.dart';
import 'package:mobilerisen/telas/Detalhes1.dart';
import 'package:mobilerisen/telas/Detalhes2.dart';
import 'package:mobilerisen/telas/Home.dart';
import 'package:mobilerisen/telas/Login.dart';
import 'package:mobilerisen/telas/MinhasInspecoes.dart';
import 'package:mobilerisen/telas/Perfil.dart';

class RouteGenerator {

  static Route<dynamic>generateRoute(RouteSettings settings){

    switch(settings.name){
      case "/":
        return MaterialPageRoute(
          builder: (_) => Login()
        );
      case "/login":
        return MaterialPageRoute(
            builder: (_) => Login()
        );
      case "/home":
        return MaterialPageRoute(
            builder: (_) => Home()
        );
      case "/detalhes1":
        return MaterialPageRoute(
            builder: (_) => Detalhes1()
        );
        case "/detalhes2":
        return MaterialPageRoute(
            builder: (_) => Detalhes2()
        );
      case "/perfil":
        return MaterialPageRoute(
            builder: (_) => Perfil()
        );
      default:
        _erroRota();
    }

  }

  static Route<dynamic> _erroRota(){
    return MaterialPageRoute(
      builder: (_){
        return Scaffold(
          appBar: AppBar(title: Text("Tela não encontrada"),),
          body: Center(
            child:  Text("Tela não encontrada"),
          ),
        );
      }
    );
  }

}