import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../../connect.dart';

class Doamt extends StatefulWidget {
 Doamt({Key? key,required this.id}) : super(key: key);
  var id;

  @override
  State<Doamt> createState() => _DoamtState();
}

class _DoamtState extends State<Doamt> {
  var amount=TextEditingController();

  Future<void> sendData()async {
    var data = {
      "amount": amount.text,
      "id": widget.id,

    };
    print(data);
    var response = await post(Uri.parse('${Con.url}donate.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        const snackBar = SnackBar(content: Text("successfully Donated"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
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


        leading: Icon(Icons.list_outlined,color: Colors.black,
        ),
      ),
      body:Center(
        child:Column(
        children:[
SizedBox(
  height: 60,
),
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: TextFormField(
          controller: amount,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            hintText: "Enter Amount",

          ),

        ),

      ),
          SizedBox(
            height: 60,
          ),
          ElevatedButton(
            onPressed:(){
              sendData();
            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
                fixedSize: const Size(130, 50),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0))),
            child: const Text('Submit'),
          ),
      ]
    )
      )
    );
  }
}
