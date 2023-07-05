import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/stray%20care%20office/collectedanimal.dart';
import 'package:straycare/stray%20care%20office/viewreporte.dart';

class Strhome extends StatefulWidget {
  const Strhome({Key? key}) : super(key: key);

  @override
  State<Strhome> createState() => _StrhomeState();
}

class _StrhomeState extends State<Strhome> {
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
    builder: (BuildContext context) => Collect(),
    ),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black54,
    fixedSize: const Size(250, 70),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
    child: const Text('Collected Animals'),
    ),
    SizedBox(
    height: 20,
    ),
    ElevatedButton(
    onPressed: () {
    Navigator.push(context, MaterialPageRoute (
    builder: (BuildContext context) =>Vw(),
    ),
    );
    },
    style: ElevatedButton.styleFrom(
    backgroundColor: Colors.black54,
    fixedSize: const Size(250, 70),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50))),
    child: const Text('View Reported Animals'),
    ),
      SizedBox(
        height: 20,
      ),


      ],
    )
    )
    );
  }
}
