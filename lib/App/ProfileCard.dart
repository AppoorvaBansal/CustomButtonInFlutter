import 'dart:html';

import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile",style: TextStyle(
          fontWeight: FontWeight.w100,
          fontStyle: FontStyle.italic
        ),),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),

      body:Container(
        alignment: Alignment.center,
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            getCard(),
            getImage()

          ],



        ),


          )



    );
  }

  Container getCard() {
    return Container(
      width: 250,
      height: 150,
      margin: EdgeInsets.all(45.0),
      decoration: BoxDecoration(
        color: Colors.lightGreen,
        borderRadius: BorderRadius.circular(6.0)
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.person),
          Text("Appoorva BAnsal"),
          Text("Assistant Professor"),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.person),
              Text("Appoorva BAnsal"),
            ],
          )



        ],

      ),



    );


  }

  Container getImage() {
    
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(60.0)),
          image: DecorationImage(image: NetworkImage("https://picsum.photos/100/100"),fit: BoxFit.fill)
        
      ),
      
      
      
    );
    
    
  }
}
