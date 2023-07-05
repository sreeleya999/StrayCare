import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';

import '../connect.dart';
import 'login.dart';

class Reg extends StatefulWidget {
  const Reg({Key? key}) : super(key: key);

  @override
  State<Reg> createState() => _RegState();
}

class _RegState extends State<Reg> {
  var formkey=GlobalKey<FormState>();
  var name = TextEditingController();
  var email = TextEditingController();
  var phone = TextEditingController();
  var password = TextEditingController();
  var confirmpassword = TextEditingController();
  Future<void> getData() async {
    var data = {
      "name": name.text,
      "email": email.text,
      "phone_no": phone.text,
      "password": password.text,
      "confirmpassword": confirmpassword.text,
      'type':'user'
    };

  @override
  var response = await post(Uri.parse('${Con.url}register.php'), body: data);
    print(response.body);
    if (response.statusCode == 200) {
      var res = jsonDecode(response.body)["result"];
      if (res == 'success') {
        const snackBar = SnackBar(content: Text("successfully registered"),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
        Navigator.push(context,MaterialPageRoute(builder: (context){
          return Login();
        },
        ));
      }
    }
    else {
      Fluttertoast.showToast(msg: "something went wrong");
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Form(
                key:formkey ,
                child:  SingleChildScrollView(
                    child: Column(
                        children: [
                          Image.asset("assets/pet.jpeg",width: 230,height: 150,),



                          Container(
                              margin: EdgeInsets.only(top: 10,left: 10,right: 10),
                              padding:
                              EdgeInsets.only(left: 20, right: 20, top: 20, bottom:30),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30),
                                    bottomLeft: Radius.circular(30),
                                    bottomRight: Radius.circular(30),
                                  )),
                              child:Column(

                                  children: [
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: name,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "name cannot be Empty";

                                        }
                                        else if(val.length<4){
                                          return "Email must be atleast 7 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide:BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        hintText: "Enter your Name",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: email,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "email cannot be Empty";

                                        }
                                        else if(val.length<7){
                                          return "Email must be atleast 7 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                          borderSide:BorderSide(color: Colors.white),
                                          borderRadius: BorderRadius.circular(15),
                                        ),
                                        hintText: "Enter your email",
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                      TextFormField(
                                        controller: phone,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(15),
                                          ),
                                          hintText: "Enter your Phone",
                                        ),
                                      ),
                                    SizedBox(
                                      height: 10,
                                    ),

                                    TextFormField(
                                      controller: password,
                                      obscureText:true,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "Password cannot be Empty";

                                        }
                                        else if(val.length<4){
                                          return "Password must be atleast 4 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        ),


                                        hintText: " Password",
                                        suffixIcon: IconButton(
                                          icon: Icon(Icons.remove_red_eye_rounded), onPressed: () {  },
                                        ),
                                      ),

                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                      controller: confirmpassword,
                                      obscureText:true,
                                      validator:(val){
                                        if(val!.isEmpty){
                                          return "Password cannot be Empty";

                                        }
                                        else if(val.length<4){
                                          return "Password must be atleast 8 characters long";
                                        }
                                        return null;
                                      },
                                      decoration: InputDecoration(
                                        border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(20)
                                        ),


                                        hintText: "Confirm Password",
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
                          ),

                    )
                )
            )
    );

  }
}
