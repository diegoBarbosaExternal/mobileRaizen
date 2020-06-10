import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilerisen/telas/Home.dart';
import 'package:mobilerisen/telas/Login.dart';

class Detalhes1 extends StatefulWidget {
  @override
  _Detalhes1State createState() => _Detalhes1State();
}

class _Detalhes1State extends State<Detalhes1> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

//    Navigator.pushReplacementNamed(context, "/");

    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Inspeção"),
      ),
      body: Container(
        child: Column(

          children: <Widget>[
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage("imagens/mapa/Mapa_001.PNG"),
                ),

              ),

            ),/// IMAGEM MAPA

            Container(

              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Posto Ipiranga",
                      style: TextStyle(
                        fontSize: 22,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "Al. Rio Negro, 1139 - Alphaville",
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),

            ),/// DESCRICAO


            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("Razão Social: Auto Posto 123ABC Ltda.", style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("CNPJ: 01.123.456/0001-28", style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("Gerente: Pedro A.", style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("Tel Contato: 11 98765-4321", style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("Última inspeção: 28/02/2020", style: TextStyle(fontSize: 20),),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 5),
                    child: Text("Tipo de Combustível: Gasolina", style: TextStyle(fontSize: 20),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 0, bottom: 18),
                    child: Text("Bandeira: Petrobrás", style: TextStyle(fontSize: 20),),
                  ),

                ],
              ),
            )

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton.extended(
        elevation: 5,
          onPressed: (){
//          Navigator.pop(context);
          Navigator.pushReplacementNamed(context, "/home");
          Navigator.pushNamed(context, "/detalhes2");
          },
          label: Text("Aceitar Inspeção", style: TextStyle(fontSize: 15),)),
      bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
        SizedBox(
          height: 55,
        )
      ],),),
    );
  }
}
