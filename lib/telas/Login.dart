import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mobilerisen/constants.dart';
import 'package:mobilerisen/telas/Home.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {

  TextEditingController _controllerUsuario = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  void _validarLogin(){

    if (
//    true
    _controllerUsuario.text == "sgs" &&
    _controllerSenha.text == "sgs"
    ){
//      _controllerUsuario.text = "";
//      _controllerSenha.text = "";

      Navigator.pushReplacementNamed(context, "/home");

    } else {
      showDialog(
          context: context,
        builder: (context){
            return AlertDialog(
              title: Text("Falha no login"),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Text("Usuário ou senha inválidos")
                ],
              ),
            );
        }
      );
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      color: COR_RAIZEN_ROXO,
      padding: EdgeInsets.only(top: 64, bottom: 64),
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[

            Image.asset("imagens/ra-300x300.png", width: MediaQuery.of(context).size.width / 1.5,),//Main Logo
//            Container(
//              padding: EdgeInsets.only(left: 16, top: 8, right: 16, bottom: 8),
//              color: Colors.white,
//              child: Image.asset("imagens/Raizen-logo.png", width: MediaQuery.of(context).size.width / 1.8,),
//            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: TextFormField(
                    controller: _controllerUsuario,
                  cursorColor: Colors.black12,

                    decoration: InputDecoration(

                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Usuário",
                      labelStyle: TextStyle(color: Colors.green),
                    ),
                  ),
                ),
                Card(
                  margin: EdgeInsets.all(10),
                  color: Colors.white,
                  child: TextFormField(
                    controller: _controllerSenha,
                    cursorColor: Colors.black12,
                    obscureText: true,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: "Senha",
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(12),
              child: FlatButton(
                color: Colors.white,
                child: Text("ACESSAR"),
                onPressed: (){

                  _validarLogin();

                },

              ),
            ),
          ],
        ),
      ),
    );

  }
}
