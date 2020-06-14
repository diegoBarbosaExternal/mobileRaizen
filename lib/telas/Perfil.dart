import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';

class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil') ,
      ),


      body: Column(
        children: <Widget>[
          Expanded(

            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                /// FOTO DO PERFIL
                Align(alignment: Alignment.center,
                  child: Icon(Icons.supervised_user_circle, size: MediaQuery.of(context).size.width/2
                  ),
                ),

                /// DADOS DO OPERADOR
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('João da Silva', style: TextStyle(fontSize: 40)
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 10),
                          child: Text('joao.silva@gmail.com', style: TextStyle(fontSize: 30),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: Text('11 91234-5678', style: TextStyle(fontSize: 30),),
                        ),

                      ],
                    ),
                  ],
                ),

                /// LOGO COM TÍTULO
                Column(

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 0),
                      child: Text("A serviço da: ", style: TextStyle(fontSize: 30),),
                    ),
                    SizedBox(
                      height: 100.0,
                      child: Image.asset(
                        "imagens/Raizen-logo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),



              ],
            ),
          ),
        ],
      ),



      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          elevation: 5,
          onPressed: (){
            Navigator.pushReplacementNamed(context, "/login");
          },
          label: Text("Desconectar", style: TextStyle(fontSize: 30),)),
      bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
        SizedBox(
          height: 55,
        )
      ],),),
    );

  }
}
