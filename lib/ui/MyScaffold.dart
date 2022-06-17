import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:my_first_flutter_app/ui/CustomeButton.dart';
import 'package:my_first_flutter_app/App/ProfileCard.dart';



class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  fun_email()
  {
    print("EMAIL");
  }

  final settingicon=Icons.settings;
  final emailIcon=Icons.email;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Blog"),
        centerTitle: true,
        backgroundColor: Colors.teal.shade600,
        actions: <Widget>[
          IconButton(onPressed: ()=>print("SETTING"), icon: Icon(settingicon)),
          IconButton(onPressed: fun_email, icon: Icon(emailIcon)),
          IconButton(onPressed: ()=>{print("logout")}, icon: Icon(Icons.logout))

        ],
      ),

      floatingActionButton: FloatingActionButton(
        foregroundColor:Colors.blueGrey,
        backgroundColor: Colors.red.shade100,
        hoverColor: Colors.blue,
        onPressed:()=>print("CLICKEDDDDDDDDDDDD"),
        child: Icon(Icons.plus_one_sharp),

      ),
      bottomNavigationBar:
      BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.email),label: "Email"),
        BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "My Account"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.alarm),label: "ALarm")
      ],
      onTap: (int i){

        switch(i){
          case 0: print("EMail");
          break;
          case 1: print("Account");
          break;
          case 2: print("Home");
          break;
          case 3: print("Alarm");
          break;
        }

          print("$i is clicked ");
      },
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.blueGrey.shade100,
      ) ,


      backgroundColor: Colors.red.shade50,
      body: Center(
          child:Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text("Hello world",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    fontSize: 45
                ),
              ),

              InkWell(
                child: Text("Show!!",
                    style:TextStyle(fontSize: 30,fontStyle: FontStyle.italic)),
                onTap: (){
                  print("Hello");
                  fun_email();
                  final sb=SnackBar(content: Text("ANdroid"),);
                  Scaffold.of(context).showSnackBar(sb);


                },
              ),
              CustomButtonRed(),

            ],
          )
      ),
    );
  }
}