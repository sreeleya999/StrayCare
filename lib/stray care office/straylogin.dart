import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:straycare/stray%20care%20office/strayhome.dart';

import '../connect.dart';

class Strlogin extends StatefulWidget {
  const Strlogin({Key? key}) : super(key: key);

  @override
  State<Strlogin> createState() => _StrloginState();
}

class _StrloginState extends State<Strlogin> {
  var formkey=GlobalKey<FormState>();
  var name = TextEditingController();
  var password = TextEditingController();
  Future<void> getData() async {
    var data = {
      "name": name.text,
      "password": password.text,
    };
    var response = await post(Uri.parse('${Con.url}straylogin.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        Fluttertoast.showToast(msg: 'successfully logged in');
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Strhome();
          },
        ));
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.orangeAccent,
        body: Center(
            child: Form(
                key:formkey ,
                child:  SingleChildScrollView(
                    child: Column(
                        children: [
                          Image.asset("assets/new.png",width: 230,height: 150,),



                          Container(
                              margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                              padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20, bottom:80),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              child:Column(

                                  children: [
                                    SizedBox(
                                      height: 60,
                                    ),
                                    TextFormField(
                                      controller: name,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "name cannot be Empty";

                                        }
                                        else if(val.length<2){
                                          return "Email must be atleast 2 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide:BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        hintText: "Enter Name",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    TextFormField(
                                      controller: password,
                                      obscureText:true,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "Password cannot be Empty";

                                        }
                                        else if(val.length<2){
                                          return "Password must be atleast 2 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        ),


                                        hintText: "Password",
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.remove_red_eye_rounded), onPressed: () {  },
                                        ),
                                      ),

                                    ),
                                    SizedBox(
                                      height: 30,
                                    ),

                                    ElevatedButton(
                                      child: const Text('SIGN IN'),
                                      onPressed: () {
                                        getData();

                                        if(formkey.currentState!.validate()){
                                          debugPrint("all validation pressed");
                                        }



                                      },
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black,),



                                    ),

                                  ]
                              )
                          ),
                          SizedBox(
                            height: 20,
                          ),


                        ]
                    )
                )
            )
        )
    );
  }
}
