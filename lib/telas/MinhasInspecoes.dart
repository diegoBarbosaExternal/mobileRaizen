import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobilerisen/globals.dart' as globals;

class MinhasInspecoes extends StatefulWidget {
  @override
  _MinhasInspecoesState createState() => _MinhasInspecoesState();
}

class _MinhasInspecoesState extends State<MinhasInspecoes> {
  List _itens = [];

  void _carregarItens() {
    _itens = [];
    for (int i = 0; i < 8; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Posto Ipiranga #${i}";
      item["endereco"] = "Al Rio Negro, 00${i}";
      item["selecionado"] = false;
      _itens.add(item);
    }

  }

  @override
  Widget build(BuildContext context) {

    _carregarItens();

    return Container(
      padding: EdgeInsets.all(0),
      child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            return ListTile(
              title: Card(
                elevation: 5,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 100,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: ExactAssetImage("imagens/mapa/mapaBranco.png"),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Posto Xxxxx"),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: Text("Rua xxx, nºyyy"),
                              ),
                            ],
                          ),
//                          Row(
//                            children: <Widget>[
//                              Text("STATUS: "),
//                              Icon(Icons.brightness_1,
//                                color: (indice % 3 == 0 ? Colors.green : Colors.orange),
//                              ),
//                            ],
//                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              onTap: () {
                setState(() {
                  switch(globals.telaSelecionada){
                    case 1:
                      Navigator.pushNamed(context, "/apresentacao");
                      break;
                    case 2:
                      Navigator.pushNamed(context, "/formularioResumido");
                      break;
                  }
                });
              },
            );
          }),
    );
  }
}