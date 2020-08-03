import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/NovaInspecao.dart';
import 'package:mobilerisen/telas/InspecaoAceita.dart';
import 'package:mobilerisen/telas/Inicio.dart';
import 'package:mobilerisen/telas/Login.dart';
import 'package:mobilerisen/telas/MinhasInspecoes.dart';
import 'package:mobilerisen/telas/Perfil.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/globals.dart' as globals;

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  String tituloTela = "";

  List<Widget> telas = [
    Inicio(),
    MinhasInspecoes(),
    MinhasInspecoes(),

  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void didUpdateWidget(Home oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }


  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print ("BUILD");
  }

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
        title: Image.asset("imagens/Raizen-logo.png", width: 90,),
        actions: <Widget>[
          IconButton(icon: Icon(Icons.supervised_user_circle),
            onPressed: (){
              setState(() {
                Navigator.pushNamed(context, "/perfil");
              });
            },
          ),
        ],
      ),
      body: telas[globals.telaSelecionada],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: COR_RAIZEN_ROXO,
        currentIndex: globals.telaSelecionada,
        onTap: (indice){
          setState(() {
            globals.telaSelecionada = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: Text("Início"),
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text("Pendentes"),
              icon: Icon(Icons.local_gas_station)
          ),
          BottomNavigationBarItem(
              title: Text("Histórico"),
              icon: Icon(Icons.history)
          ),

        ],
      ),
    );

  }
}
