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
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[
              Align(alignment: Alignment.center,
                child: Icon(Icons.supervised_user_circle, size: MediaQuery.of(context).size.width/2
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding( padding: EdgeInsets.only(left: 16, bottom: 10),child: Text( 'Nome: Jão Pedro Alvres Cabral', style: TextStyle(fontSize: 18 ),), ),
              Padding( padding: EdgeInsets.only(left: 16, bottom: 10),child: Text( 'E-mail: jaozin.vidaloka2002@gmail.com', style: TextStyle(fontSize: 18 ),), ),
              Padding( padding: EdgeInsets.only(left: 16, bottom: 10),child: Text( 'Telefone: 11 91234-5678', style: TextStyle(fontSize: 18 ),), ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: ExactAssetImage("imagens/bolinha.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Text( '2', style: TextStyle(fontSize: 100),),
                        ),
                      ),
                      Text( 'Atribuídas', style: TextStyle(fontSize: 20 ),),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.scaleDown,
                            image: ExactAssetImage("imagens/bolinha.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(50.0),
                          child: Text( '1', style: TextStyle(fontSize: 100),),
                        ),
                      ),
                      Text( 'Realizadas', style: TextStyle(fontSize: 20 ),),
                    ],
                  ),

                ],
              ),
              SizedBox (
                height: 100,
              ),
            ],
          ),
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
          elevation: 5,
          onPressed: (){
            Navigator.pushReplacementNamed(context, "/login");
          },
          label: Text("Sair", style: TextStyle(fontSize: 30),)),
      bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
        SizedBox(
          height: 55,
        )
      ],),),
    );

  }
}
