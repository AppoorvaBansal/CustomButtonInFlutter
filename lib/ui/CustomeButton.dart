import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButtonRed extends StatelessWidget {
  const CustomButtonRed({Key? key}) : super(key: key);

  onTapRed(context)
  {
    final snackbar=SnackBar(content:Text("RED ALRET"));
    Scaffold.of(context).showSnackBar(snackbar);

  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:()=>onTapRed(context)
        // final snackbar=SnackBar(content:Text("RED ALRET"));
        // Scaffold.of(context).showSnackBar(snackbar);

      ,

      child: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(20.00)
        ),
        child:Text("Red Alert",style: TextStyle(
          fontStyle: FontStyle.italic,
          fontSize: 35,
        ),)

      ),

    );
  }
}
