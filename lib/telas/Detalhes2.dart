import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';

class Detalhes2 extends StatefulWidget {
  @override
  _Detalhes2State createState() => _Detalhes2State();
}

class _Detalhes2State extends State<Detalhes2> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Minha Inspeção selecionada"),
        ),
        body: SingleChildScrollView(
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
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Bandeira",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Hora ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nº Bomba ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nº Bico ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Tipo Bomba ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Temperatura ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  cursorColor: Colors.black54,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      labelText: "Nº Tanque ",
                    labelStyle: TextStyle(
                      color: Colors.black54
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: COR_RAIZEN_ROXO),
                    ),

                  ),
                  style: TextStyle(
                      fontSize: 22
                  ),

                ),
              ),



            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton.extended(
            elevation: 5,
            onPressed: (){
              Navigator.pop(context);
            },
            label: Text("Finalizar e Enviar", style: TextStyle(fontSize: 20),)),
        bottomNavigationBar: BottomAppBar(child: Row(children: <Widget>[
          SizedBox(
            height: 55,
          )
        ],),),
      ),
    );
  }
}
