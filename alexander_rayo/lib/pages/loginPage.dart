import '../widgets/icon_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/circle.dart';
import '../widgets/input_text.dart';
import 'home_page.dart';
import 'dart:ui';

class loginPage extends StatefulWidget {
  @override
  _loginPageState createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  GlobalKey<FormState> _formKey = GlobalKey();
  String _nombre = '', _password = '';
  _submit() {
    final isOk = _formKey.currentState.validate();
    if (isOk) {
      Navigator.of(context).push(MaterialPageRoute(builder: (context)=>homePage()));
      }
    }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final orangeSize = size.width*0.8;
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: Container(
          width: size.width,
          height: size.height,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Positioned(
                  left: -size.width * 0.15,
                  top: -size.width * 0.34,
                  child: circle(
                    radius: size.width * 0.35,
                    colors: [
                      Colors.orangeAccent,
                      Colors.orange,
                    ],
                  )),
              Positioned(
                  right: -size.width*0.15,
                  top: -size.width * 0.36,
                  child: circle(
                    radius: size.width * 0.45,
                    colors: [
                      Colors.orange,
                      Colors.deepOrange,
                    ],
                  )),
              SingleChildScrollView(
                child: Container(
                  width: size.width,
                  height: size.height,
                  child: SafeArea(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SizedBox(height: 1),
                        Positioned(
                          top: 120 ,
                          bottom:-100,
                          child: iconContainer(
                            size:size.width,
                          ),
                        ),
                        Column(
                          children: <Widget>[
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 300,
                                minWidth: 100  ,
                              ),
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  children: <Widget>[
                                    InputText(
                                      keyboardType: TextInputType.name,
                                      label: "Nombre de Usuario",
                                      onChanged: (text) {
                                        _nombre = text;
                                      },
                                      validator: (text) {
                                        if (text.contains("@!#%&/()=?.,|<>{}[]")) {
                                          return "nombre invalido";
                                        } else if (text.trim().length == 0) {
                                          return "No dejar vacio el espacio";
                                        } else {
                                          return null;
                                        }
                                      },
                                    ),
                                    SizedBox(height: 30),
                                    InputText(
                                      obscureText: true,
                                      label: "Contraseña",
                                      onChanged: (text) {
                                        _password = text;
                                      },
                                      validator: (text) {
                                        if (text.contains("@!#%&/()=?.,|<>{}[]")) {
                                          return "contraseña  invalido";
                                        } else if (text.trim().length == 0) {
                                          return "No dejar vacio el espacio";
                                        } else {
                                          return null;
                                        }
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 250,
                                minWidth: 250,
                              ),
                              child: CupertinoButton(
                                padding: EdgeInsets.symmetric(vertical: 17),
                                color: Colors.orange,
                                onPressed: this._submit,
                                child: Text("Ingresar", style: TextStyle(fontSize: 20)
                                ),
                              ),
                            ),
                            SizedBox(height: 30),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                    "aplicacion creada por: ali alexander rayo G.",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.grey)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
