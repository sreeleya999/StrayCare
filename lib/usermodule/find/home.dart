import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/find/miising%20pet%20list.dart';
import 'package:straycare/usermodule/find/report%20pet%20missing.dart';

class Fhome extends StatefulWidget {
  Fhome({Key? key,required this.id}) : super(key: key);
  var id;

  @override
  State<Fhome> createState() => _FhomeState();
}

class _FhomeState extends State<Fhome> {
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
    builder: (BuildContext context) => Misslist(id: widget.id,),
    ),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black54,
    fixedSize: const Size(250, 70),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
    child: const Text('MISSING PET LIST'),
    ),
    SizedBox(
    height: 20,
    ),
    ElevatedButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute (
    builder: (BuildContext context) =>Report(id: widget.id,),
    ),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black54,
    fixedSize: const Size(250, 70),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
    child: const Text('REPORT YOUR PET MISSING'),
    ),
    SizedBox(
    height: 20,
    ),
      ]
    )
    )
    );
  }
}
