import 'package:flutter/material.dart';
import '../pages/loginPage.dart';

class iconContainer extends StatelessWidget {
  final double size;
  const iconContainer({Key key, @required this.size}) :assert(size!=null && size >0),super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color:Colors.white,
            boxShadow:[
            BoxShadow(color: Colors.black26, blurRadius: 10)
            ]
      ),
      child: Center(
              child: Image.asset('img/logo.jpg',fit: BoxFit.cover,)
            ),
    );
  }
}
