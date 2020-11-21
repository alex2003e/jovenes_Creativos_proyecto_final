import 'editScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/textScreen.dart';

class homePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,

        title: Text('Mis Notas',style:TextStyle(fontSize: 20,color: Colors.white)),
      ),
      body:Container(
      child: Column(
        children: <Widget> [
        SizedBox(height: 30,),

        Positioned(
             child: textScreen()

          )


        ],

      ),
      )
    );
  }
}