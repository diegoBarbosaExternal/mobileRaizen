import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';

class Apresentacao extends StatefulWidget {
  @override
  _ApresentacaoState createState() => _ApresentacaoState();
}

class _ApresentacaoState extends State<Apresentacao> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Apresentação') ,
      ),
      body:
      Padding(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start ,
            children: <Widget>[

              Align(alignment: Alignment.center,
                child: Icon(Icons.supervised_user_circle, size: MediaQuery.of(context).size.width/2
                ),
              ),
              SizedBox(
                height: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text('João da Silva', style: TextStyle(fontSize: 30)
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text('joao.silva@gmail.com', style: TextStyle(fontSize: 20),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 5, top: 5),
                        child: Text('11 91234-5678', style: TextStyle(fontSize: 20),),
                      ),

                      Card(
                        elevation: 5,
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width/1.5,

                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: ExactAssetImage("imagens/mapa/Mapa_001.PNG"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(1),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Posto Ipiranga 001"),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Al Rio Negro, 001"),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 100,),
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
                      ),

                      Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Text("A serviço da: ", style: TextStyle(fontSize: 20),),
                          ),
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
            Navigator.pushReplacementNamed(context, "/inspecaoAceita");
          },
          label: Text("Iniciar Inspeção", style: TextStyle(fontSize: 20),)),
      bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
        SizedBox(
          height: 55,
        )
      ],),),
    );

  }
}
