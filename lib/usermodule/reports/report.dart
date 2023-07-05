import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:straycare/usermodule/reports/reportissue.dart';

class Report extends StatefulWidget {
  Report({Key? key,required this.id}) : super(key: key);
var id;
  @override
  State<Report> createState() => _ReportState();
}

class _ReportState extends State<Report> {


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
body: Stack(
  children: [

    ImageFiltered(
imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3),
      child:  Image.asset("assets/pet2.jpeg",
  fit: BoxFit.cover,
  height: 750,
),
),

Row(

    mainAxisAlignment: MainAxisAlignment.center,
    children:[
    Text("REPORTING ANIMAL ISSUES",textAlign:TextAlign.right, style: TextStyle(fontSize: 18.0,color: Colors.white,fontWeight: FontWeight.bold),
    ),
    ]
    ),
  Center(
  child: ElevatedButton(onPressed: (){
    Navigator.push(context, MaterialPageRoute (
      builder: (BuildContext context) => Rptiss(id: widget.id,),
    ),
    );
  },
      style: ElevatedButton.styleFrom(
        primary: Colors.black,),

      child: Text("REPORT"))
  )
    ]
),
    );
  }
}
