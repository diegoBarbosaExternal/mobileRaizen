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
        appBar: AppBar(
          title: Text("Inspeção realizada"),
        ),

        body: Column(
          children: <Widget>[
            Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[

                    /// TITULO
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Inspeção #1234", style: TextStyle(fontSize: 32),),
                        ],
                      ),
                    ),

                    /// MAPA COM BARRA DE STATUS E ENDEREÇO
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
                              height: 200,
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

                    /// DETALHES DA INSPEÇÃO
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
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
                          width: MediaQuery.of(context).size.width / 2,
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
      ),
    );
  }
}
