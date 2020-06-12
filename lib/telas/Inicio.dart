import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/Detalhes1.dart';
import 'package:mobilerisen/telas/Home.dart';

class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {

  Color corTempo(int index){
    switch(index){
      case 0:
        return Colors.green;
      case 1:
        return Colors.amber;
      case 2:
        return Colors.red;
      default:
        return Colors.blue;
    }
  }

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
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[

                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                height: 50.0,
                                child: Image.asset(
                                  "imagens/fuel.png",
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[

                                Padding(

                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text("Posto Ipiranga #${index}", style: TextStyle(fontSize: 30),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text("Al Rio Negro, 00${index}", style: TextStyle(fontSize: 20),),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 2),
                                  child: Text("Última inspeção: 01/01/2020", style: TextStyle(fontSize: 20),),
                                ),

                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: <Widget>[
                                    Text('Status', style: TextStyle(fontSize: 20),),
                                    Icon(Icons.brightness_1, color: corTempo(index)),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),


                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.all(22.0),
                              child: index == 1 ? SizedBox(
                                  height: 50.0,
                                  child: Icon(Icons.access_time, color: Colors.black, size: 45,
                                  )
                              ): SizedBox(
                                height: 50,
                                width: 50,
                              ),
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