import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobilerisen/telas/Detalhes1.dart';
import 'package:mobilerisen/telas/Home.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  @override
  Widget build(BuildContext context) {

    print ("INICIO");

    return Container(
      child: SingleChildScrollView(
        child: Column(

          children: <Widget>[
            Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: ExactAssetImage("imagens/mapa/PontosPosto.png"),
                ),

              ),

            ),

            Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "VOCÊ TEM [ 3 ] INSPEÇÕES DISPONÍVEIS",
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),

            ),

            Container(
              child: SingleChildScrollView(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: (){
                      print("INICIO: Clicando em ${index}");

                      Navigator.pushNamed(context, "/detalhes1");

                    },

                    child: ListTile(
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
                                  image: ExactAssetImage("imagens/mapa/Mapa_001.PNG"),
                                ),

                              ),

                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Posto Ipiranga #${index}"),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Text("Al Rio Negro, 00${index}"),
                            ),

                          ],
                        ),
                      ),
                    ),


//              child: Card(
//                elevation: 5,
//                child: ListTile(
//                  title: Text("ABC"),
//                  subtitle: Text("DEF"),
//                ),
//              ),

                  ),



                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}