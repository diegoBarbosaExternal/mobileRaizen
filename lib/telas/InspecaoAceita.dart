import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/globals.dart' as globals;


class InspecaoAceita extends StatefulWidget {
  @override
  _InspecaoAceitaState createState() => _InspecaoAceitaState();
}

class _InspecaoAceitaState extends State<InspecaoAceita> {

  String _pergunta1;
  String _pergunta2;
  String _pergunta3;
  String _pergunta4;
  String _pergunta5;
  String _pergunta6;
  String _pergunta7;
  String _pergunta8;
  String _pergunta9;
  String _pergunta10;
  String _pergunta11;


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){

      },
      child: Scaffold(
      appBar: AppBar(
      iconTheme: IconThemeData(
      color: Colors.grey,
      ),
        title: Image.asset("imagens/Raizen-logo.png", width: 90,),
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
//                        Row(
//                          children: <Widget>[
//                            Text("STATUS: "),
//                            Icon(Icons.brightness_1,
//                              color: (Colors.orange),
//                            ),
//                          ],
//                        ),
                      ],
                    ),
                  ),


                ],
              ),


//              Row(
//                mainAxisSize: MainAxisSize.max,
//                mainAxisAlignment: MainAxisAlignment.center,
//                children: <Widget>[
//                  RaisedButton(
//                      shape: RoundedRectangleBorder(
//                        borderRadius: BorderRadius.circular(22),
//                      ),
//                      child: Row(
//                        children: <Widget>[
//                          Transform.rotate(
//                            angle: pi/12,
//                            child: Icon(Icons.attach_file, color: Colors.white,),
//                          ),
////                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
//                        ],
//                      ),
//                      color: COR_RAIZEN_ROXO,
//
//                      onPressed: (){}
//
//                  ),
//                ],
//              ),

            SizedBox(height: 20,),
///TITULO SEGURANÇA OPERACIONAL
              Padding(
                padding: EdgeInsets.only(left: 10, top: 10),
                child:
                Text(
                  'Segurança Operacional', style: TextStyle(fontSize: 30, color: COR_RAIZEN_ROXO),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("1. O posto é isento de fontes de ignição fixas e funcionários intervem quando surgem fontes móveis?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta1,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta1 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta1,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta1 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("2. Funcionário abastece moto somente quando o cliente desce da moto?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta2,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta2 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta2,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta2 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("3. Todas as bombas possuem breakway?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta3,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta3 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta3,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta3 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("4. Existe ponto de aterramento específico para descarga de combustíveis?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta4,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta4 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta4,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta4 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("5. Ao abastecer GNV, todos saem e permanecem 3 metros à frente do veículo?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta5,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta5 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta5,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta5 = escolha;
                              });
                            }
                        ),
                        Text("Não"),
                        Radio(
                            value: "n/a",
                            groupValue: _pergunta5,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta5 = escolha;
                              });
                            }
                        ),
                        Text("N/A"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("6. Respiros dos tanques possuem placa de aviso de área de risco?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta6,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta6 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta6,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta6 = escolha;
                              });
                            }
                        ),
                        Text("Não"),
                        Radio(
                            value: "n/a",
                            groupValue: _pergunta6,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta6 = escolha;
                              });
                            }
                        ),
                        Text("N/A"),


                      ],
                    ),
                  ],
                ),
              ),

              /// SEPARADOR CLEBER

              Padding(
                padding: EdgeInsets.only(left: 10),
                child:
                Text(
                  'Meio Ambiente', style: TextStyle(fontSize: 30, color: COR_RAIZEN_ROXO),
                ),
              ),

              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("7. Spill, sumps e canaletas ao redor da cobertura estão sem produto?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta7,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta7 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta7,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta7 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("8. O posto possui caixa separadora de água e óleo e está limpa?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta8,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta8 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "f",
                            groupValue: _pergunta8,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta8 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),

              ///SEPARADOR PLANO DE EMERGENCIA

              Padding(
                padding: EdgeInsets.only(left: 10),
                child:
                Text(
                  'Plano de Emergência', style: TextStyle(fontSize: 30, color: COR_RAIZEN_ROXO),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("9. Material absorvente e extintores estão adequados e todos conhecem o plano de emergência?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta9,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta9 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta9,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta9 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("10. É realizado treinamento simulado de plano de emergência?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta10,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta10 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta10,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta10 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),

              ///SEPARADOR SUSTENTABILIDADE

              Padding(
                padding: EdgeInsets.only(left: 10),
                child:
                Text(
                  'Sustentabilidade', style: TextStyle(fontSize: 30, color: COR_RAIZEN_ROXO),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("11. Posto possui iluminação de LED na cobertura de bombas?"),
                    Row(
                      children: <Widget>[
                        RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22),
                            ),
                            child: Row(
                              children: <Widget>[
                                Transform.rotate(
                                  angle: pi/12,
                                  child: Icon(Icons.attach_file, color: COR_RAIZEN_ROXO,),
                                ),
//                          Text('Inserir Imagem', style: TextStyle(color: Colors.white, fontSize: 16),),
                              ],
                            ),
                            color: Colors.white,

                            onPressed: (){}

                        ),
                        Radio(
                            value: "s",
                            groupValue: _pergunta11,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta11 = escolha;
                              });
                            }
                        ),
                        Text("Sim"),
                        Radio(
                            value: "n",
                            groupValue: _pergunta11,
                            onChanged: (String escolha){
                              setState(() {
                                _pergunta11 = escolha;
                              });
                            }
                        ),
                        Text("Não"),


                      ],
                    ),
                  ],
                ),
              ),


            ],
          ),
        ),

        bottomNavigationBar: BottomAppBar(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton.extended(
                  elevation: 5,
                  onPressed: (){
                    setState(() {
                      globals.telaSelecionada = 0;
                    });
                    Navigator.pushNamed(context, "/identificacaoResponsavel");

                  },

                  label: Text("Avançar", style: TextStyle(fontSize: 20),)),
            ),

        ],),),
      ),
    );
  }
}
