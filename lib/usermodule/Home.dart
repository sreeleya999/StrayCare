import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/adoption/adopt.dart';
import 'package:straycare/usermodule/donation/donate.dart';
import 'package:straycare/usermodule/find/home.dart';

import 'package:straycare/usermodule/reports/report.dart';

class Home extends StatefulWidget {
  Home({Key? key,required this.id}) : super(key: key);
  var id;
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Image.asset('assets/pet.jpeg'), // Replace with your image path
          ),
        ],


        leading: Icon(Icons.list_outlined,color: Colors.black,
      ),
      ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: 50,
              ),
              Image.asset('assets/pett.png',fit: BoxFit.cover,width: 50,height:190,),

               Text('STRAY CARE',textAlign:TextAlign.center, style: TextStyle(fontSize: 16.0,color: Colors.black,fontWeight: FontWeight.bold),
               ),
SizedBox(
  height: 20,
),
              ListTile(
                leading: Icon(
                  Icons.person_outline_rounded,
                ),
                title: const Text('User Profile'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.notifications,
                ),
                title: const Text('Notifications'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.edit,
                ),
                title: const Text('About Us'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.help_outline_rounded,
                ),
                title: const Text('Help Line'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),

          body:SingleChildScrollView(
     child:     Column(

    children:[

          Container(

            margin: EdgeInsets.only(top: 10,left: 10,right: 10),
            padding:
            EdgeInsets.only(left: 20, right: 20, top: 0, bottom:0),

            child: Stack(
              alignment: Alignment.center,
              children: [
            ClipRRect(
            borderRadius: BorderRadius.circular(20),
              child:  ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3), //SigmaX and Y are just for X and Y directions
                    child: Image.asset('assets/pet2.jpeg',fit: BoxFit.cover,width: 450,height: 190,) //here you can use any widget you'd like to blur .
                ),
            ),
                Positioned(
                  bottom: 16.0,
                  child: Column(
                    children: [
                      Text(
                        'REPORTING ANIMAL ISSUES',
                        style: TextStyle(fontSize: 13.0,color: Colors.white,fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 16.0),
                      ElevatedButton(
                        onPressed: () {
                        Navigator.push(context, MaterialPageRoute (
                          builder: (BuildContext context) => Report(id: widget.id,),
                        ),
                        );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,),
                        child: Text('REPORT',style: TextStyle(fontSize: 13.0,color: Colors.black,),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
      Container(

        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        padding:
        EdgeInsets.only(left: 20, right: 20, top: 0, bottom:0),

        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3), //SigmaX and Y are just for X and Y directions
                  child: Image.asset('assets/pet4.jpeg',fit: BoxFit.cover,width: 450,height: 190,) //here you can use any widget you'd like to blur .
              ),
            ),
            Positioned(
              bottom: 16.0,
              child: Column(
                children: [
                  Text(
                    'FIND YOUR PET',
                    style: TextStyle(fontSize: 13.0,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                       Navigator.push(context, MaterialPageRoute (
                         builder: (BuildContext context) => Fhome(id: widget.id,),
                                                                      ),
                                                                     );

                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,),
                    child: Text('FIND',style: TextStyle(fontSize: 13.0,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(

        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        padding:
        EdgeInsets.only(left: 20, right: 20, top: 0, bottom:0),

        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3), //SigmaX and Y are just for X and Y directions
                  child: Image.asset('assets/pet5.jpg',fit: BoxFit.cover,width: 450,height: 190,) //here you can use any widget you'd like to blur .
              ),
            ),
            Positioned(
              bottom: 17.0,
              child: Column(
                children: [
                  Text('''A DOPT OR SPONSER A STRAY ANIMAL''',


                    style: TextStyle(fontSize: 13.0,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                        Navigator.push(context, MaterialPageRoute (
                                                                        builder: (BuildContext context) =>Adpt(),
                                                                      ),
                                                                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,),
                    child: Text('ADOPT',style: TextStyle(fontSize: 13.0,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(

        margin: EdgeInsets.only(top: 10,left: 10,right: 10),
        padding:
        EdgeInsets.only(left: 20, right: 20, top: 0, bottom:0),

        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  ImageFiltered(
                  imageFilter: ImageFilter.blur(sigmaY:1,sigmaX:3), //SigmaX and Y are just for X and Y directions
                  child: Image.asset('assets/pet6.jpg',fit: BoxFit.cover,width: 450,height: 190,) //here you can use any widget you'd like to blur .
              ),
            ),
            Positioned(
              bottom: 17.0,
              child: Column(
                children: [
                  Text('''HELP US MORE LIVES,DONATE TODAY''',


                    style: TextStyle(fontSize: 13.0,color: Colors.white,fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute (
                                                 builder: (BuildContext context) => Donate(id: widget.id,),
                                               ),
                                               );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,),
                    child: Text('DONATE',style: TextStyle(fontSize: 13.0,color: Colors.black,),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ]
    )
          )
    );
  }
}








