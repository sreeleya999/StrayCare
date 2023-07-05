import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/login.dart';
import 'package:straycare/usermodule/register.dart';

class Log extends StatefulWidget {
  const Log({Key? key}) : super(key: key);

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:Center(

      child: SingleChildScrollView(
      child: Column(
      children: [
      Image.asset("assets/pet.jpeg",width: 230,height: 120,),
    Text("A LIFEINE FOR INDIA'S",style: TextStyle(color: Colors.grey, fontSize: 15,fontFamily: 'timesnewroman'),
    textAlign: TextAlign.center,
    ),
    Text("STRAY ANIMALS",style: TextStyle(color: Colors.blueGrey, fontSize: 30,fontFamily: 'timesnewroman',fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    SizedBox(
    height: 20,
    ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed:(){
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => Login(),
                ),
              );
            }, child: Text("SIGN IN "),
              style: ElevatedButton.styleFrom(
              primary: Colors.orange,)
            ),
            ElevatedButton(onPressed:(){
              Navigator.push(context,
                MaterialPageRoute (
                  builder: (BuildContext context) => Reg(),
                ),
              );
            }, child: Text("SIGN UP "),
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,)
            ),
          ]
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Text("If feeling lazy",style: TextStyle(color: Colors.grey,),

            ),

          ],


        ),
        SizedBox(
          height: 30,
        ),
        Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
        CircleAvatar(
          backgroundImage: AssetImage('assets/fb.png'),
          radius: 20,

        ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/go1.jpg'),
              radius: 20,

            ),
    ]
    ),
        ]
    ),
      )
      )
    );
  }
}
