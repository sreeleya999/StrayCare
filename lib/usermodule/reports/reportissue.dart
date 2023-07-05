import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/reports/abuse.dart';
import 'package:straycare/usermodule/reports/agressive.dart';
import 'package:straycare/usermodule/reports/strayanimal.dart';
import 'package:straycare/usermodule/reports/wild.dart';

import 'injured.dart';

class Rptiss extends StatefulWidget {
  Rptiss({Key? key,required this.id}) : super(key: key);
  var id;
  @override
  State<Rptiss> createState() => _RptissState();
}

class _RptissState extends State<Rptiss> {


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
        ),
      body: Center(
        child: Column(
        children:[
          SizedBox(
            height: 100,
          ),
    ElevatedButton(
    onPressed: () {
      Navigator.push(context, MaterialPageRoute (
        builder: (BuildContext context) => Stray(id:widget.id,),
      ),
      );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black54,
    fixedSize: const Size(250, 70),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
    child: const Text('STRAY ANIMAL'),
    ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) =>Inju(id:widget.id),
              ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                fixedSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: const Text('INJURED ANIMAL'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) =>Agre(id: widget.id,),
              ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                fixedSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: const Text('AGRESSIVE ANIMAL'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) =>Wild(id: widget.id,),
              ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                fixedSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: const Text('A WILD ANIMAL'),
          ),
          SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute (
                builder: (BuildContext context) =>Abu(id: widget.id,),
              ),
              );
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black54,
                fixedSize: const Size(250, 70),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            child: const Text('ABUSE TOWARDS ANIMALS'),
          ),
        ]
      ),
      )
    );
  }
}
