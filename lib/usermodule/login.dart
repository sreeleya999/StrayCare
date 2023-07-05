import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:straycare/usermodule/Home.dart';

import '../connect.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var formkey=GlobalKey<FormState>();
  var name = TextEditingController();
  var password = TextEditingController();
  Future<void> getData() async {
    var data = {
      "name": name.text,
      "password": password.text,
    };
    var response = await post(Uri.parse('${Con.url}login.php'), body: data);
    var res = jsonDecode(response.body);
    print(res);
    if (response.statusCode == 200) {
      if (res['message'] == 'User Successfully Logged In') {
        var id = res["reg_id"];
        print(id);
        final spref = await SharedPreferences.getInstance();
        spref.setString('l_id', id);
        Fluttertoast.showToast(msg: 'successfully logged in');
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Home(id:id);
          },
        ));
      }
      else {
        // Fluttertoast.showToast(msg: 'something went wrong');
      }
    }
  }

  @override
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
              EdgeInsets.only(left: 20, right: 20, top: 20, bottom:80),
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
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Text("If feeling lazy",style: TextStyle(color: Colors.grey,),

          ),

        ],


      ),
      SizedBox(
        height: 20,
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            CircleAvatar(
              backgroundImage: AssetImage('assets/fb.png'),
              radius: 20,

            ),
            CircleAvatar(
              backgroundImage: AssetImage('assets/go1.jpg'),
              radius: 20,

            ),
          ]
      ),
    ]
      )
    )
      )
      )
    );
  }
}
