import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../pages/editScreen.dart';

class textScreen extends StatefulWidget {
  @override
  _textScreenState createState() => _textScreenState();
}

class _textScreenState extends State<textScreen> {
  String texto = '';
  @override
  Widget build(BuildContext context) {
    return Container(

      width: 130,
      height: 100,

     decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(30),
          color:Colors.white,
          boxShadow:[
            BoxShadow(color: Colors.black26, blurRadius: 10)
          ]

      ),

    child: RaisedButton(
      color:Colors.white,
      child:Text(texto),
      onPressed: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => editScreen(texto)))
          .then((result) {
        if (result != null) {
          setState(() {
            texto = result;
          });
        }
      });},
    ),
    );
  }
}
