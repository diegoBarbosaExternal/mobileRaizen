import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String _escolhaUsuario;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Testando"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("1. O posto é isento de fontes..."),
              Row(
                children: <Widget>[
                  Text("Masculino"),
                  Radio(
                      value: "m",
                      groupValue: _escolhaUsuario,
                      onChanged: (String escolha){
                        setState(() {
                          _escolhaUsuario = escolha;
                        });
                        print("resultado: " + escolha);
                      }
                      ),
                  Text("Feminino"),
                  Radio(
                      value: "f",
                      groupValue: _escolhaUsuario,
                      onChanged: (String escolha){
                        setState(() {
                          _escolhaUsuario = escolha;
                        });
                        print("resultado: " + escolha);
                      }
                  ),

                ],
              ),
            ],
          ),


        ),
      ),
    );
  }
}
