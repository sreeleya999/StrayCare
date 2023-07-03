import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect.dart';

class Misslist extends StatefulWidget {
  Misslist({Key? key,required this.id}) : super(key: key);
  var id;

  @override
  State<Misslist> createState() => _MisslistState();
}

class _MisslistState extends State<Misslist> {
  Future<dynamic> getData() async {


    var response=await get(Uri.parse('${Con.url}viewmissing.php'));
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
        title: Text('''REPORTING YOUR
 PET MISSING''',style: TextStyle(fontSize: 15),),
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
                  Text('Petname :${snapshot.data[index]['petname']}'),
                  Text('Age :${snapshot.data[index]['age']}'),
                  Text('Color :${snapshot.data[index]['color']}'),
                  Text('Missingdate :${snapshot.data[index]['missingdate']}'),
                  Text('Location :${snapshot.data[index]['location']}'),
                  Text('Phoneno :${snapshot.data[index]['phoneno']}'),
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
