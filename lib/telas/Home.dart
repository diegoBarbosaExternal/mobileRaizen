import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/Detalhes1.dart';
import 'package:mobilerisen/telas/Detalhes2.dart';
import 'package:mobilerisen/telas/Inicio.dart';
import 'package:mobilerisen/telas/Login.dart';
import 'package:mobilerisen/telas/MinhasInspecoes.dart';
import 'package:mobilerisen/telas/Perfil.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int telaIndex = 0;
  String tituloTela = "";

  List<Widget> telas = [
    Inicio(),
    Detalhes2(),
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
      body: telas[telaIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: COR_RAIZEN_ROXO,
        currentIndex: telaIndex,
        onTap: (indice){
          setState(() {
            telaIndex = indice;
          });
        },
        items: [
          BottomNavigationBarItem(
              title: Text("Início"),
              icon: Icon(Icons.home)
          ),
          BottomNavigationBarItem(
              title: Text("Minha Inspeção"),
              icon: Icon(Icons.local_gas_station)
          ),
          BottomNavigationBarItem(
              title: Text("Realizadas"),
              icon: Icon(Icons.history)
          ),


        ],
      ),
    );

  }
}
