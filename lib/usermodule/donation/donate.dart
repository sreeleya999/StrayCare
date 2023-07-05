import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/donation/donateamount.dart';

class Donate extends StatefulWidget {
 Donate({Key? key,required this.id}) : super(key: key);

  var id;

  @override
  State<Donate> createState() => _DonateState();
}

class _DonateState extends State<Donate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset('assets/new.png'), // Replace with your image path
          ),
        ],


        leading: Icon(Icons.list_outlined,color: Colors.black,
        ),
      ),
      body:
      Stack(
          children: [

            ImageFiltered(
              imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3),
              child:  Image.asset("assets/pet6.jpg",
                fit: BoxFit.cover,
                height: 750,
              ),
            ),
SizedBox(
  height: 90,
),
            Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  Text('''GIVING STRAY ANIMALS
                   A CHANCE''',textAlign:TextAlign.right, style: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                ]
            ),
            Center(
                child: ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute (
                    builder: (BuildContext context) => Doamt(id: widget.id,),
                  ),
                  );
                },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orangeAccent,),

                    child: Text("DONATE"))
            )
          ]
      ),
    );
  }
}
