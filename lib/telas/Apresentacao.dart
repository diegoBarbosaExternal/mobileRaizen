import 'package:flutter/cupertino.dart';
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

                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Card(
                    elevation: 5,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[

                        /// MAPA
                        Container(
                          height: 100,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: ExactAssetImage("imagens/mapa/Mapa_001.PNG"),
                            ),
                          ),
                        ),

                        /// BARRA BRANCA ABAIXO DO MAPA
                        Padding(
                          padding: const EdgeInsets.only(left: 5, right: 5),

                          /// LINHA DA BARRA
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              /// NOME DO POSTO E ENDEREÇO
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

                              /// STATUS E BOLINHA LARANJA
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
                ),

                /// LOGO COM TÍTULO
                Column(

                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 0, top: 0),
                      child: Text("A serviço da: ", style: TextStyle(fontSize: 30),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width/2,
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
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                  elevation: 5,
                  onPressed: (){
                    Navigator.pushReplacementNamed(context, "/inspecaoAceita");
                  },
                  label: Text("Iniciar Inspeção", style: TextStyle(fontSize: 20),)),
            ),

          ],
        ),
      ),
    );

  }
}
