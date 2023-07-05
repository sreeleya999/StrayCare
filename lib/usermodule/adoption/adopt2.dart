import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Adopt2 extends StatefulWidget {
  const Adopt2({Key? key}) : super(key: key);

  @override
  State<Adopt2> createState() => _Adopt2State();
}

class _Adopt2State extends State<Adopt2> {
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
                        image: AssetImage("assets/img2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text("Chinse cat",style: TextStyle(color: Colors.black, fontSize: 20,fontFamily: 'railway',fontWeight: FontWeight.bold),
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[

                        SizedBox(
                          height: 20,
                        ),
                        Text("Category: Cat",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Breed : Birman Cat Breed",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Color : White",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text("Gender : Female",style: TextStyle(color: Colors.black, fontSize: 12,fontFamily: 'railway',fontWeight: FontWeight.bold),
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
