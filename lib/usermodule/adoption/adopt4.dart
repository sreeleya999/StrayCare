import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adopt4 extends StatefulWidget {
  const Adopt4({Key? key}) : super(key: key);

  @override
  State<Adopt4> createState() => _Adopt4State();
}

class _Adopt4State extends State<Adopt4> {
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
        body:Center(
            child: Column(
                children: [
                  Container(
                    height: 150,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/img4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("German Shepherd",style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'railway',fontWeight: FontWeight.bold),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[

                        SizedBox(
                          height: 20,
                        ),
                        Text("Category: Dog",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Breed : German Breed",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Color : Brown",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Gender : Adult male",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Health Condition : Normal",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),

                      ]
                  ),
                  SizedBox(
                    height: 80,
                  ),
                  ElevatedButton(
                    onPressed:(){

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade700,
                        fixedSize: const Size(120, 50),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
                    child: const Text('Adopt'),
                  ),
                ]
            )
        )
    );
  }
}
