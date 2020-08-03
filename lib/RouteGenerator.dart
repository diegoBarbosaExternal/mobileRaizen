import 'package:flutter/material.dart';
import 'package:mobilerisen/telas/Apresentacao.dart';
import 'package:mobilerisen/telas/IdentificacaoResponsavel.dart';
import 'package:mobilerisen/telas/NovaInspecao.dart';
import 'package:mobilerisen/telas/InspecaoAceita.dart';
import 'package:mobilerisen/telas/FormularioResumido.dart';
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
      case "/novaInspecao":
        return MaterialPageRoute(
            builder: (_) => NovaInspecao()
        );
        case "/inspecaoAceita":
        return MaterialPageRoute(
            builder: (_) => InspecaoAceita()
        );
      case "/perfil":
        return MaterialPageRoute(
            builder: (_) => Perfil()
        );
      case "/formularioResumido":
        return MaterialPageRoute(
            builder: (_) => FormularioResumido()
        );
      case "/apresentacao":
        return MaterialPageRoute(
            builder: (_) => Apresentacao()
        );      case "/identificacaoResponsavel":
        return MaterialPageRoute(
            builder: (_) => IdentificacaoResponsavel()
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