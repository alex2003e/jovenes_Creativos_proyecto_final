import 'package:alexander_rayo/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/input_text.dart';

class editScreen extends StatefulWidget {
  final String texto;

  editScreen(this.texto);
  @override
  _editScreenState createState() => _editScreenState();
}

class _editScreenState extends State<editScreen> {
  TextEditingController _controller;
  @override
  void initState() {
    _controller = TextEditingController(text: widget.texto);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Editar',style: TextStyle(fontSize: 20),),
        

        
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            children: <Widget>[
              TextField(
                controller: _controller,
              ),
              RaisedButton(
                child: Text('Guardar',style: TextStyle(color:Colors.white),),
                color:Colors.orange,

                onPressed: () {
                  Navigator.of(context).pop(_controller.text);
                },

              ),
            ],

          ),

        ),
      ),
    );
  }
}
