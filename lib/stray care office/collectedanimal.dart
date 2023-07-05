import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../connect.dart';

class Collect extends StatefulWidget {
  const Collect({Key? key}) : super(key: key);

  @override
  State<Collect> createState() => _CollectState();
}

class _CollectState extends State<Collect> {
  Future<dynamic> getData() async {


    var response=await get(Uri.parse('${Con.url}viewcollected.php'));
    print(response.body);
    print(response.statusCode);
    if(jsonDecode(response.body)[0]['result']=='success'){

      return jsonDecode(response.body);

    }


  }
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
      body: FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) print('Error:${snapshot.error}');
            print('view missing pet list: ${snapshot.hasData}');
            if (!snapshot.hasData) {
              return const Center(child: Text('No Data..'),);
            }

            return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Breed : ${snapshot.data[index]['breed']}'),
                        Text('Color : ${snapshot.data[index]['color']}'),
                        Text('Health condition : ${snapshot.data[index]['healthcondition']}'),
                        Text('Collected From : ${snapshot.data[index]['collectedfrom']}'),
                        Text('Collected on : ${snapshot.data[index]['collected on']}'),

                      ],
                    ),
                  ),
                );
              },
            );
          }
      ),
    );
  }
}
