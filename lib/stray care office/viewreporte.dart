import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../connect.dart';

class Vw extends StatefulWidget {
  const Vw({Key? key}) : super(key: key);

  @override
  State<Vw> createState() => _VwState();
}

class _VwState extends State<Vw> {
  Future<dynamic> getData() async {


    var response=await get(Uri.parse('${Con.url}viewreport.php'));
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
                        Text('Report_type : ${snapshot.data[index]['reporttype']}'),
                        Text('Description : ${snapshot.data[index]['description']}'),
                        Text('Location : ${snapshot.data[index]['location']}'),


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
