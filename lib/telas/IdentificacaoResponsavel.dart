import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/globals.dart' as globals;

class IdentificacaoResponsavel extends StatefulWidget {
  @override
  _IdentificacaoResponsavelState createState() => _IdentificacaoResponsavelState();
}

class _IdentificacaoResponsavelState extends State<IdentificacaoResponsavel> {
  @override
  Widget build(BuildContext context) {


    return GestureDetector(
      onTap: (){

      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
            color: Colors.grey,
          ),
          title: Image.asset("imagens/Raizen-logo.png", width: 90,),
        ),

        body: SingleChildScrollView(
          padding: EdgeInsets.all(3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Inspeção #1234", style: TextStyle(fontSize: 32),),
                  ],
                ),
              ),

              SizedBox(
                height: 10,
              ),

              Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Nome do Responsável pelo posto",
                          labelStyle: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "RG",
                          labelStyle: TextStyle(color: Colors.black45),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Text("Anexar Foto", style: TextStyle(fontSize: 18),)],
              ),
              RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Transform.rotate(
                        angle: pi/12,
                        child: Icon(Icons.attach_file, color: Colors.white,),
                      ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                    ],
                  ),
                  color: COR_RAIZEN_ROXO,

                  onPressed: (){}

              ),

              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[Text("Assinatura do Responsável", style: TextStyle(fontSize: 18),)],
              ),

              Card(
                elevation: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: MediaQuery.of(context).size.width / 1.5,
                      decoration: BoxDecoration(

                      ),
                    ),
                    BottomAppBar(
                      color: COR_RAIZEN_ROXO,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.check, color: Colors.white,),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.clear, color: Colors.white,),
                        ),

                      ],
                      ),
                    ),

                  ],
                ),
              ),

              SizedBox(
                height: 50,
              )


            ],
          )
        ),



        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: FloatingActionButton.extended(
                    elevation: 5,
                    onPressed: (){
                      setState(() {
                        globals.telaSelecionada = 0;
                      });
                      Navigator.pushReplacementNamed(context, "/home");

                    },

                    label: Text("Finalizar e Enviar", style: TextStyle(fontSize: 20),)),
              ),

            ],),),
      ),
    );


  }
}
