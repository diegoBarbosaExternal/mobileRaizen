import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class FormularioResumido extends StatefulWidget {
  @override
  _FormularioResumidoState createState() => _FormularioResumidoState();
}

class _FormularioResumidoState extends State<FormularioResumido> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Scaffold(

        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(3),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
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
                Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage("imagens/mapa/Mapa_001.PNG"),
                        ),

                      ),

                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Posto Ipiranga #1"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Al Rio Negro, 001"),
                              ),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Text("STATUS: "),
                              Icon(Icons.brightness_1,
                                color: (Colors.orange),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),


                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Data/Hora da Inspeção: 27/01/2020 22h30', style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Endereço: Rua Jovinal, 344 - São Paulo', style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Razão Social: Auto Posto 123ABC Ltda. ', style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Text('Tipo de Inspeção: Etanol', style: TextStyle(fontSize: 20),),
                ),

                /// INSIRA SEU LOGO AQUI

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 140.0,
                      child: Image.asset(
                        "imagens/sgsLogo.png",
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),


              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
            elevation: 5,
            onPressed: (){
              Navigator.pop(context);
            },
            label: Text("Voltar", style: TextStyle(fontSize: 20),)),
        bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
          SizedBox(
            height: 55,
          )
        ],),),
      ),
    );
  }
}
