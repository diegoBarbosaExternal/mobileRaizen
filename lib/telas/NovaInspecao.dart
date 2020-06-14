import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/Home.dart';
import 'package:mobilerisen/telas/Login.dart';
import 'package:some_calendar/some_calendar.dart';
import 'package:intl/intl.dart';
import 'package:jiffy/jiffy.dart';
import 'package:mobilerisen/globals.dart' as globals;


class NovaInspecao extends StatefulWidget {
  @override
  _NovaInspecaoState createState() => _NovaInspecaoState();
}

class _NovaInspecaoState extends State<NovaInspecao> {

  @override
  void initState() {
    // TODO: implement initState
    Intl.systemLocale = 'en_US';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

//    Navigator.pushReplacementNamed(context, "/");
    DateTime selectedDate = DateTime.now();
    List<DateTime> selectedDates = List();
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Nova Inspeção"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[

                    Column(
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
                    Column(

                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Agendado para:",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "27/01/2020 às 19h50",
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ],
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
                    child: Text("Bandeira: Branca", style: TextStyle(fontSize: 20),),
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[

                      Padding(

                        padding: const EdgeInsets.all(30),
                        child: new FloatingActionButton.extended(
                        icon: Icon(Icons.check),
                          heroTag: "btn1",
                          elevation: 5,
                          label: Text('SELECIONAR', style: TextStyle(fontSize: 16),),
                          backgroundColor: COR_RAIZEN_ROXO,
                          onPressed: (){

                          setState(() {
                          globals.telaSelecionada = 1;
                          });
                            Navigator.pushNamedAndRemoveUntil(context, "/home", (_) => false);
                          },
                        ),
                      ),



                    ],
                  ),



                ],
              ),
            )

          ],
        ),
      ),

    );
  }
}
