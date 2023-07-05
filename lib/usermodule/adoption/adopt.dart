import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:straycare/usermodule/adoption/adopt1.dart';
import 'package:straycare/usermodule/adoption/adopt4.dart';
import 'package:straycare/usermodule/adoption/adopt5.dart';
import 'package:straycare/usermodule/adoption/adopt6.dart';

import 'adopt2.dart';
import 'adopt3.dart';

class Adpt extends StatefulWidget {
  const Adpt({Key? key}) : super(key: key);

  @override
  State<Adpt> createState() => _AdptState();
}

class _AdptState extends State<Adpt> {
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
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt1()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img1.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt2()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt3()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img3.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt4()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img4.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt5()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img5.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 150,
                  width: 150,
                  child: InkWell(
                    splashColor: Colors.green,
                    onTap: ()
                    {
                      Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Adopt6()),
                      );
                    },
                  ),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img7.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
